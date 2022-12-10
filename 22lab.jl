n = tryparse(Int64, readline())
mat = zeros(Int64, n, n)
for i in 1:n
  for j in 1:n
    if i == j || i + j == n + 1
      mat[i,j]=1
    end
  end
end
len = div(n,2)
for i in 1:n+1
    if i <= n
        for j in 1:len
            print(mat[i,j]," ")
        end
        if i > 1
            for j in len+1:n
                print(mat[i-1,j]," ")
            end
        end
    else
        for j in 1:len
            print("  ")
        end
        for j in len+1:n
            print(mat[i-1,j]," ")
        end
    end
    println()
end
