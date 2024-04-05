var input = Int(readLine()!)!

for i in 1...input{
    var space = String(repeating: " ", count: input-i)
    var star = String(repeating: "*", count: i)
    print(space+star)
}
