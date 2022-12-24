module lb

include("__a.jl")
using .lab

function main()
    n = tryparse(Int64, readline())
    println(count_square(n))
end

using Test
@testset "mod_test" begin
    @test count_square(5)==3
end

end
lb.main()
