# 07 Ternary_operator.jl
# Ternary operator example in Julia using a chemical engineering concept

# Suppose we want to check if the temperature is above the boiling point of water
# and decide if the phase is "Vapor" or "Liquid"

temperature = 120.0  # in °C
boiling_point = 100.0  # boiling point of water in °C

phase = temperature > boiling_point ? "Vapor" : "Liquid"

println("At $temperature, water is in the $phase phase.")