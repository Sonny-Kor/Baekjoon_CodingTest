let N = Int(readLine()!)!
var isPass = true
var result = 0
for _ in 0..<N{
	let input = readLine()!.split(separator: " ")
	if input[0] == "in" {
		result += Int(input[1])!
	}else if input[0] == "out" {
		result -= Int(input[1])!
	}
	
	if result >= 0 {
		continue
	}
	else{
		isPass = false
		break
	}
}

if isPass {
	print("success")
}else{
	print("fail")
}