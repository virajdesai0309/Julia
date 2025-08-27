# 09 For Loop.jl
# Calculate the conversion of a reactant in a batch reactor over time
# Using first-order reaction: A → Products, rate = -k*C_A

function batch_reactor_for_loop()
    k = 0.2 # reaction rate constant (1/hr)
    C_A0 = 1.0 # initial concentration of A (mol/L)
    t_final = 10.0 # total time (hr)
    dt = 1.0 # time step (hr)

    times = 0:dt:t_final
    concentrations = Float64[]

    C_A = C_A0
    for t in times
        push!(concentrations, C_A)
        # First-order decay: C_A = C_A0 * exp(-k*t)
        C_A = C_A0 * exp(-k * t)
    end

    println("Time (hr): ", times)
    println("Concentration of A (mol/L): ", concentrations)
end

batch_reactor_for_loop()