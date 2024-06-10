let input = Int(readLine()!)!

var arr : [String] = []
for _ in 0..<input{
	let temp = readLine()!.map { String($0) }
	var newString = ""
	for i in 0..<temp.count {
		if temp[i] == "a" || temp[i] == "e" || temp[i] == "i" || temp[i] == "o" || temp[i] == "u" ||
		   temp[i] == "A" || temp[i] == "E" || temp[i] == "I" || temp[i] == "O" || temp[i] == "U"{
			newString += temp[i]
		}
	}
	arr.append(newString)
}

for i in arr{
	if i.count == 0 {
		print("???")
	}else {
		print(i)
	}
}