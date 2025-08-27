# 05 Data_types.jl
# Demonstrating Julia data types using chemical engineering concepts

# Scalar types: Representing temperature (in Celsius) and pressure (in atm)
temperature::Float64 = 350.0      # Reactor temperature in °C
pressure::Float64 = 5.0           # Reactor pressure in atm

# Integer type: Number of stages in a distillation column
num_stages::Int = 10

# Boolean type: Is the reaction exothermic?
is_exothermic::Bool = true

# String type: Name of the chemical process
process_name::String = "Ammonia Synthesis"

# Array type: Concentrations of reactants in a batch reactor (mol/L)
concentrations::Vector{Float64} = [1.0, 0.8, 0.5]  # [NH3, N2, H2]

# Tuple type: Physical properties of a solvent (density, viscosity)
solvent_properties::Tuple{Float64, Float64} = (0.789, 0.001)  # (g/cm³, Pa·s)

# Dictionary type: Mapping component names to their molar masses (g/mol)
molar_masses::Dict{String, Float64} = Dict(
    "NH3" => 17.03,
    "N2"  => 28.01,
    "H2"  => 2.02
)

# Custom struct: Describing a chemical reactor
struct Reactor
    volume::Float64      # m³
    temperature::Float64 # °C
    pressure::Float64    # atm
end

# Creating an instance of Reactor
main_reactor = Reactor(5.0, temperature, pressure)

# Display all variables
println("Process: $process_name")
println("Temperature: $temperature °C, Pressure: $pressure atm")
println("Number of stages: $num_stages")
println("Is exothermic? $is_exothermic")
println("Concentrations (mol/L): $concentrations")
println("Solvent properties (density, viscosity): $solvent_properties")
println("Molar masses: $molar_masses")
println("Main reactor: Volume $(main_reactor.volume) m³, Temperature $(main_reactor.temperature) °C, Pressure $(main_reactor.pressure) atm")