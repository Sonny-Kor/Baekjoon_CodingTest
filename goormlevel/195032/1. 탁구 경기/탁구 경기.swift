let input = Int(readLine()!)!

var D = 0
var P = 0
for _ in 0..<input{
	let temp = readLine()!
	
	if temp == "D"{
		D += 1
	}else if temp == "P"{
		P += 1
	}
	
	if abs(D-P) == 2{ break }
}

print("\(D):\(P)")