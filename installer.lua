function download(link,filename)
    f = fs.open(filename, "w+")
    dat = http.get(link)
    sleep(1)
    f.write(dat)
    f.close()
end

print("Downloading main.lua ...")
download("https://github.com/TheFakeBot/sOS/raw/refs/heads/main/main.lua", "main.lua")
print("Downloading bootstrap.lua ...")
download("https://github.com/TheFakeBot/sOS/raw/refs/heads/main/bootstrap.lua", "bootstrap.lua")
print("Downloading startup.lua ...")
download("https://github.com/TheFakeBot/sOS/raw/refs/heads/main/startup.lua", "startup.lua")
i=5
while i ~= -1 do
    clear()
    print("Install complete! Restarting in " + i)
    i=i-1
    sleep(1)
end
os.reboot()