let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let c = input[1]

var array : [Int] = readLine()!.split(separator: " ").map { Int($0)! }

var result = 1

for i in 0..<array.count-1 {
	let remainTime = array[i+1] - array[i]
	if remainTime <= c {
		result += 1
	}else {
		result = 1
	}
}
print(result)