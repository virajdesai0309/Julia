# 08 While loop.jl
# While loop example: Simulating a simple batch reactor

# TIP Wrap everything in a function to avoid global scope issues
function batch_reactor()
    # Parameters
    A0 = 1.0           # Initial concentration of A (mol/L)
    k = 0.2            # First-order rate constant (1/hr)
    dt = 0.1           # Time step (hr)
    t = 0.0            # Initial time (hr)
    A = A0             # Current concentration of A
    threshold = 0.05   # Stop when concentration drops below this value

    println("Time (hr)\tConcentration of A (mol/L)")
    while A > threshold
        println("$(round(t, digits=2))\t\t$(round(A, digits=4))")
        # First-order decay: dA/dt = -k*A
        A -= k * A * dt
        t += dt
    end

    println("Reaction complete. Final time: $(round(t, digits=2)) hr, Final [A]: $(round(A, digits=4)) mol/L")
end

batch_reactor()
