/*
3
21 Junkyu
21 Dohyun
20 Sunyoung
 */

var N = Int(readLine()!)!

var dict : [(Int,String)] = []

for _ in 0..<N{
    var input = readLine()!.split(separator: " ")
    
    dict.append((Int(input[0])!, String(input[1])))
}
dict.sort { dict1, dict2 in
    return dict1.0 < dict2.0
}

for (i,v) in dict{
    print("\(i) \(v)")
}
