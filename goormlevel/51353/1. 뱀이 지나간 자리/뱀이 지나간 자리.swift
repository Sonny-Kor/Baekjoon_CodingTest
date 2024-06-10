let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]
var arr : [[Character]] = Array(repeating: Array(repeating: ".", count: M), count: N)

var currentX = 0
var currentY = 0

var flag = true
for i in 0..<N{
	for j in 0..<M{
		if i % 2 == 0 {
			arr[i][j] = "#"
		}
	}
	if i % 2 == 1 && flag{
		arr[i][M-1] = "#"
		flag = !flag
	}else if i % 2 == 1 && !flag{
		arr[i][0] = "#"
		flag = !flag
	}
}

for i in 0..<N{
	var temp = ""
	for j in 0..<M{
		temp += String(arr[i][j])
	}
	print(temp)
}
