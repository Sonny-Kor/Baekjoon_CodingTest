var N = Int(readLine()!)!

for i in 0..<N{
    var dict: [String:Int] = [:]
    var M = Int(readLine()!)!
    if M == 0{
        print(0)
        continue
    }
    for _ in 0..<M{
        var input = readLine()!.split(separator: " ").map{ String($0) }
        dict[input[1]] = (dict[input[1]] ?? 0) + 1
    }
    
    if dict.count == 1{
        print(M)
    }else{
        var result = 1
        for i in dict.values{
            result *= (i+1)
        }
        print(result-1)
        
    }
}
