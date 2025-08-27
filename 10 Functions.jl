# 10 Functions.jl
# Chemical Engineering Functions

module ChemEngFunctions

export mass_balance, energy_balance, reaction_rate, ideal_gas_law, reynolds_number, nusselt_number

"""
    mass_balance(F_in, F_out, generation, consumption)

Performs a general mass balance:
F_in - F_out + generation - consumption = accumulation
Returns the accumulation.
"""
function mass_balance(F_in, F_out, generation=0.0, consumption=0.0)
    return F_in - F_out + generation - consumption
end

"""
    energy_balance(Q_in, Q_out, W_in, W_out, ΔH_rxn)

Performs a general energy balance:
Q_in - Q_out + W_in - W_out + ΔH_rxn = accumulation
Returns the accumulation.
"""
function energy_balance(Q_in, Q_out, W_in, W_out, ΔH_rxn=0.0)
    return Q_in - Q_out + W_in - W_out + ΔH_rxn
end

"""
    reaction_rate(k, C, n)

Calculates reaction rate for a reaction of order n:
rate = k * C^n
"""
function reaction_rate(k, C, n)
    return k * C^n
end

"""
    ideal_gas_law(P, V, n, R=0.08206, T)

Solves the ideal gas law: PV = nRT
Returns true if the equation is satisfied.
"""
function ideal_gas_law(P, V, n, T; R=0.08206)
    return isapprox(P * V, n * R * T; atol=1e-4)
end

"""
    reynolds_number(ρ, u, D, μ)

Calculates Reynolds number for flow in a pipe:
Re = (ρ * u * D) / μ
"""
function reynolds_number(ρ, u, D, μ)
    return (ρ * u * D) / μ
end

"""
    nusselt_number(Re, Pr)

Estimates Nusselt number for turbulent flow in a pipe (Dittus-Boelter equation):
Nu = 0.023 * Re^0.8 * Pr^0.4
"""
function nusselt_number(Re, Pr)
    return 0.023 * Re^0.8 * Pr^0.4
end

end # module

using .ChemEngFunctions

# Example usage of reynolds_number
ρ = 1000.0      # density in kg/m^3
u = 2.0         # velocity in m/s
D = 0.05        # diameter in m
μ = 0.001       # viscosity in Pa·s

Re = reynolds_number(ρ, u, D, μ)
println("Reynolds number: ", Re)