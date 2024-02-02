import Foundation

let first = Int(readLine()!)!

var A = [Int]()
var B = [Int]()

let elements : [Int] = (readLine()?.split(separator: " ").compactMap({ Int($0)!}))!
A += elements
let elements2 : [Int] = (readLine()?.split(separator: " ").compactMap({ Int($0)!}))!
B += elements2

A = A.sorted(by: <)
B = B.sorted(by: >)


var result : Int = 0

for i in 0..<A.count {
    let product = A[i] * B[i]
    result = result + product
}
print(result)
