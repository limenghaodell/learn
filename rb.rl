File.open("name.txt", "r:utf-8"){|l| buffer = l.read.gsub(",","\n");File.open("name.txt", "w"){|l|l.write(buffer)}}
hash = Hash.new(0)
arr = IO.readlines("name.txt")
arr.each{|mz|mz = mz.chomp;mz = mz.delete "[]\" ";hash[mz] = hash[mz] + 1}
ass = hash.sort{ |a, b| b[1]<=>a[1] }
aFile = File.new("answer.txt", "w")
aFile.syswrite(ass){|l| ass = l.read.gsub(",","\n");ass = ass.delete "[]\" ";aFile{|l|l.write(ass)}}
