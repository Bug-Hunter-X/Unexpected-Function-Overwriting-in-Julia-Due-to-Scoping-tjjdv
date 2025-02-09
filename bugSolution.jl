```julia
module MyModule
  function myfunction(x)
    if x > 0
      return x^2
    else
      return -x
    end
  end
end

using .MyModule

x = -5
result = myfunction(x)
println(result)  # Output: 5

x = 5
result = myfunction(x)
println(result)  # Output: 25

# Including another file won't cause issues now
include("anotherfile.jl")

x = -5
result = myfunction(x) # Output remains the same
println(result)
```