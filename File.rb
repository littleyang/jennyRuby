f = File.new("test.txt","w")
f.puts("i","would","lony","as","a","cloud")
f.close
ft = File.open("test.txt")
line = ft.read
puts line

