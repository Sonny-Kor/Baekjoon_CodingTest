let n = Int(readLine()!)!

var result = 0
for _ in 0..<n{
	 let temp = readLine()!.split(separator: " ")
    let operand1 = Int(temp[0])!
    let operand2 = Int(temp[2])!
    let operation = String(temp[1])
    
    switch operation {
    case "+":
        result += operand1 + operand2
    case "-":
        result += operand1 - operand2
    case "*":
        result += operand1 * operand2
    case "/":
        result += operand1 / operand2
    default:
        result += 0
    }
	
}
print(result)