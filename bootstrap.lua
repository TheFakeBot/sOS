function input(text)
    print(text)
    read()
end

function update(link,filename)
    f = fs.open(filename, "w+")
    dat = http.get(link)
    sleep(1)
    f.write(dat)
    f.close()
end