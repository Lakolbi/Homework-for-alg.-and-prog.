module lb

include("__a.jl")
using .lab

function main()
    n = input()
    println(count_square(n))
end

using Test
@testset "mod_test" begin
    @test count_square(5)==3
end

end
lb.main()
