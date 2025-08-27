# Boolean logic example using chemical engineering concepts

"""
    key::Bool

A boolean variable indicating a logical state. In Julia, `Bool` is a type that can have the value `true` or `false`.

# Boolean Logic in Julia

- `&&` : Logical AND. Returns `true` if both operands are `true`.
- `||` : Logical OR. Returns `true` if at least one operand is `true`.
- `!`  : Logical NOT. Inverts the boolean value.
"""
## Example

# Suppose we want to check if a chemical reactor is operating safely.
# Criteria:
# 1. Temperature must be below 500 K
# 2. Pressure must be below 20 atm
# 3. Emergency valve must be functional

temperature = 480      # in Kelvin
pressure = 18          # in atm
emergency_valve_ok = true

# Boolean logic to check safe operation
is_safe = (temperature < 500) && (pressure < 20) && emergency_valve_ok

println("Is the reactor operating safely? ", is_safe)