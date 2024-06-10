let input = Int(readLine()!)!

var n = 1
var array : [[Int]] = Array(repeating: Array(repeating: 0, count : input), count: input)

for i in 0..<input{
	for j in 0..<input{
		array[i][j] = n
		n += 1
	}
}

for i in 0..<input {
	for j in 0..<input {
		if j == input-1 {
			print(array[i][j], terminator: "")
		}else{
			print(array[i][j], terminator: " ")
		}
	}
	print()
}