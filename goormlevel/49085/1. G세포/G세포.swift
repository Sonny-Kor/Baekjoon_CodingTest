let input = Int(readLine()!)!
let binary = String(input, radix: 2).map { String($0) }

let total = binary.filter { $0 == "1" }.count
print(total)
var result : [Character] = []
// 11 -> 1011 주니깐, 
// 3 2 1 0 내려가면서, 1일떄만
var cnt = 0
for i in (0..<binary.count).reversed(){
	if binary[i] == "1" {
		print(cnt, terminator: " ")
	}
	cnt += 1
}
