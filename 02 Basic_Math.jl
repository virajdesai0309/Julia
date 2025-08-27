# Comments in Julia is written using the # symbol
# This is a single line comment

#=
This is a multi line comment
Multi line comment can be written using the #= ... =# syntax
=#

# This is addition
println(2 + 3)

# This is subtraction
println(5 - 2)

# This is multiplication
println(4 * 6)

# This is division
println(8 / 2)

#= This is a multi line comment =#
println(2 ^ 3)  # Exponentiation

# This is modulus (remainder)
println(8 % 3)

# This is integer division
println(8 ÷ 3)

# This is floor division
println(8 \ 3)

# This will given an error because of division by zero
println(5 / 0)

# Order of operations follows standard mathematical rules
# Order follows the PEMDAS
println(2 + 3 * 4)  # Multiplication before addition
println((2 + 3) * 4)  # Parentheses change the order

