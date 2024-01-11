let input = Int(readLine()!)!
var context : [[String]] = []
for _ in 0..<input{
    let text = readLine()!
    context.append(text.map{String($0)})
}
var result : String = ""
for col in 0..<context[0].count{
    var temp = context[0][col]
    for row in 0..<input{
        if context[row][col] != temp{
            temp = "?"
        }
    }
    result += temp
}

print(result)
