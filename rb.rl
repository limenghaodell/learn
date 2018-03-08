File.open("name.txt", "r:utf-8") do |lines|
	buffer = lines.read.gsub(",","\n")
	File.open("name.txt", "w"){|l|l.write(buffer)}
end
hash = Hash.new(0)
arr = IO.readlines("name.txt")
arr.each do |mz|
	mz = mz.chomp
	mz = mz.delete "[]\" "
	hash[mz] = hash[mz] + 1
end
ass = hash.sort{ |a, b| b[1]<=>a[1] }
aFile = File.new("answer.txt", "w")
aFile.syswrite(ass) do |l|
	ass = l.read.gsub(",","\n")
	ass = ass.delete "[]\" "
	aFile{|l|l.write(ass)}
end
