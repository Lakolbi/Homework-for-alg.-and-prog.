println("Введите название файла с разрешением: ")

function readfile(name)
    tmppath, tmpio = mktemp() #сделали временный файл, получили ссылку на него и его открытый обьект
    file = open(name)
    text = readlines(file)
    close(file)
    text = text[filter(x -> x%2 == 0, eachindex(text))]
    for i in text
        println(tmpio, i)
    end
    close(tmpio)
    mv(tmppath, name, force = true) #переносим временный файл tmppath к изначальному. f. force = true заменяет один файл на другой
end

readfile(joinpath(@__DIR__, readline()))

#В тесте мы открываются два файла
#(при условии, что один из файл тот, который получила моя программа. Другой же - файл, в котором образец того, что должна была выдать программа.)
#Считываю по строчке за итераицю и тестирую их на схожесть.
using Test
@Test.testset begin
    filename = readline()
    open(joinpath(@__DIR__, filename)) do file
        open(joinpath(@__DIR__, "expected.txt")) do file1
            while !eof(file)
                @Test.test readline(file) == readline(file1)
            end
        end
    end
end