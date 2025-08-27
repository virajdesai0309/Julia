# 06 If_else.jl
# Example: Simple chemical engineering process decision using if-else

# Suppose we want to check if a reactor temperature is within safe operating limits

reactor_temp = 420.0  # in Kelvin

if reactor_temp < 350
    println("Temperature too low: Reaction may be incomplete.")
elseif reactor_temp <= 450
    println("Temperature within safe operating range.")
else
    println("Warning: Temperature too high! Risk of runaway reaction.")
end

# Another example: Checking if a distillation column can achieve desired separation

feed_composition = 0.45  # mole fraction of component A
reflux_ratio = 2.5

if reflux_ratio < 1.5
    println("Reflux ratio too low: Poor separation expected.")
elseif reflux_ratio <= 3.0
    println("Reflux ratio adequate for desired separation.")
else
    println("Reflux ratio high: Good separation, but energy usage increases.")
end