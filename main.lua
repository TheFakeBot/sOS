function input(text)
    term.write(text)
    read()
    term.write("\n")
end

function update(link,filename)
    f = fs.open(filename, "w+")
    dat = http.get(link)
    sleep(1)
    f.write(dat)
    f.close()
end

while true do
    i = input(">")
    if i == "update" then 
        x = split(i,"update ")
        link, filename = split(x, " ")
        update(link, filename)
    else
        shell.run("i")
    end
end
