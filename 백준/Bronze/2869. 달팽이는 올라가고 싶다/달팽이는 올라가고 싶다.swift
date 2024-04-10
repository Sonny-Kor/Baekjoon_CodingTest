// 2 1 5
// 낮 2 밤 -1 높 5

import Foundation
var result = 0


var input = readLine()!.split(separator: " ").map { Int($0)! }
var A = input[0]
var B = input[1]
var V = input[2]

var day = Double(V-B) / Double(A-B)

print(Int(ceil(day)))
