function download(link,filename)
    f = fs.open(filename, "w+")
    dat = http.get(link)
    sleep(1)
    f.write(dat.readAll())
    f.close()
end

print("Downloading main.lua ...")
download("https://github.com/TheFakeBot/sOS/raw/refs/heads/main/main.lua", "main.lua")
print("Downloading bootstrap.lua ...")
download("https://github.com/TheFakeBot/sOS/raw/refs/heads/main/bootstrap.lua", "bootstrap.lua")
print("Downloading startup.lua ...")
download("https://github.com/TheFakeBot/sOS/raw/refs/heads/main/startup.lua", "startup.lua")
i=5
term.clear()
print("Install complete! Restarting in ")
while i ~= -1 do
    term.setCursorPos(34,1)
    term.write(i)
    i=i-1
    sleep(1)
end
os.reboot()
