println("Введите элементы массива:")
b = zeros(Int64,30)
for i in 1:30
  a = parse(Int32,readline())
  b[i] = a
end
println(b)
println(reverse!(b))
println(maximum(b))
println(minimum(b))
println(minimum(b)+maximum(b))
