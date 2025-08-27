using JuMP, Ipopt, Statistics, Dates

function create_model()
    model = Model(Ipopt.Optimizer)
    @variable(model, -10 <= x1 <= 10)
    @variable(model, -10 <= x2 <= 10)
    @variable(model, -10 <= x3 <= 10)
    @variable(model, -10 <= x4 <= 10)

    @NLobjective(model, Min, (x1 - 1)^2 +
                              (x2 - 2)^2 +
                              (x3 - 3)^2 +
                              (x4 - 4)^2 +
                              5*sin(x1) -
                              3*cos(x2) +
                              2*x3*x4)

    @constraint(model, x1 + x2 >= 1)
    @constraint(model, x3^2 + x4 <= 10)
    @constraint(model, x1 - x4 == 2)

    return model
end

function benchmark_jump(runs::Int=10)
    times = Float64[]
    for _ in 1:runs
        model = create_model()
        start_time = now()
        optimize!(model)
        push!(times, (now() - start_time).value / 1e3) # seconds
    end
    return times
end

runs = 10
times = benchmark_jump(runs)
println("JuMP benchmark over $runs runs:")
println("  Avg: ", mean(times), " s")
println("  Min: ", minimum(times), " s")
println("  Max: ", maximum(times), " s")
