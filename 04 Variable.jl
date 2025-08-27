# 04 Variable.jl
# Example: Variables in Julia for Chemical Engineering Concepts

# Define variables for a simple chemical reaction: A + B → C

# Concentrations (mol/L)
conc_A = 1.5      # Concentration of A
conc_B = 2.0      # Concentration of B
conc_C = 0.0      # Concentration of C (initially zero)

# Reaction rate constant (L/(mol*s))
k = 0.05

# Temperature (K)
T = 298.15

# Pressure (atm)
P = 1.0

# Volume of reactor (L)
V = 10.0

# Universal gas constant (J/(mol*K))
R = 8.314

# Example calculation: Rate of reaction (assuming first order in A and B)
rate = k * conc_A * conc_B

println("Initial concentrations: A = $conc_A mol/L, B = $conc_B mol/L, C = $conc_C mol/L")
println("Reaction rate constant: $k L/(mol*s)")
println("Temperature: $T K, Pressure: $P atm, Volume: $V L")
println("Reaction rate: $rate mol/(L*s)")