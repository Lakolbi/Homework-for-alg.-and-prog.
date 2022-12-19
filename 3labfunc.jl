module lab

export input, count_square
function input()
  return parse(Int32,readline())
end

function count_square(n)
  arr = zeros(Int32,n)
  for i in 1:n
    for j in 1:n
      if i*i + j*j <= n
        arr[i*i+j*j] = 1
      end
    end
  end
  return count(h->(h == 0), arr)
end

end
