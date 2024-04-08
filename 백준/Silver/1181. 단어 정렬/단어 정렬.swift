/*
 13
 but
 i
 wont
 hesitate
 no
 more
 no
 more
 it
 cannot
 wait
 im
 yours
 */

var N = Int(readLine()!)!

var arr : [String] = []
for i in 0..<N{
    var input = readLine()!
    arr.append(input)
}
arr = Array(Set(arr))
arr.sort{ $0 < $1 }

arr.sort { str1 , str2 in
    return str1.count < str2.count
}

for chA in arr{
    print(chA)
}
