```julia
function myfunction(x)
  if x > 0
    return x^2
  else
    return -x
  end
end

x = -5
result = myfunction(x)
println(result)  # Output: 5

x = 5
result = myfunction(x)
println(result)  # Output: 25

#However, if you have a function with the same name in another file
#or a package that you include:
include("anotherfile.jl")

x = -5
result = myfunction(x) # Output might be different now
println(result)
```