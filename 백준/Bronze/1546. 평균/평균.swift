import Foundation

let N = Int(readLine()!)!

var array : [Int] = readLine()!.split(separator: " ").map { ch in
    return Int(ch)!
}

var M = array.max()!
var hap = array.reduce(0) { x, y in
    return x + y
}
var newArray = array.map({ score in
    return Double(score)/Double(M)*100
})

print(newArray.reduce(0, { x, y in
    return x+y
})/Double(N))
