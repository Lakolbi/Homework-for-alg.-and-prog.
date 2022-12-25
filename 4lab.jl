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