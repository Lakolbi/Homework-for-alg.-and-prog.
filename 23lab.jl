println("Введите строку длиной не более 80 символов,разделяя запятыми. При завершении добавьте точку:")
s = readline()
str = strip(s,'.')
counter = 0 
words = ""
for i in split(str,',')
  if i[end] == 'a'
    global counter += 1
    global words = words*i
    global words = words*'/'
  end
end
if counter == 0
  println(s)
  println("Таких слов нет.")
else
  println(s)
  println(words)
  println("Всего таких слов - ", counter)
end
