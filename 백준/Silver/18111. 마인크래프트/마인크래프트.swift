import Foundation

/*
 3 4 99
 0 0 0 0
 0 0 0 0
 0 0 0 1
 */
/*
 3 4 99
 0 0 0 0
 0 0 0 0
 0 0 0 1
 */

let input = readLine()!.split(separator: " ").map { Int($0)! }
var N = input[0]
var M = input[1]
var B = input[2]
var arr : [[Int]] = []
for _ in 0..<N{
    let arrInput : [Int] = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(arrInput)
    // [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 1]]
}
var resultHeight = 0
var minTime = Int.max
for y in 0...256{
    let tempArr = arr.map { $0.map { $0-y }}
    
    let currentTime = getTime(array: tempArr,Block: B)
//    print(tempArr, currentTime, "y: \(y)")
    if currentTime <= minTime && y >= resultHeight{
        resultHeight = y
        minTime = currentTime
    }
}
print(minTime, resultHeight)

// time 계싼{
func getTime(array : [[Int]], Block: Int) -> Int {
    var tempBlock = Block
    var resultTime = 0
    for i in 0..<N{
        for j in 0..<M{
            if array[i][j] > 0 {
                resultTime += array[i][j] * 2
                tempBlock += array[i][j]
            }
            else if array[i][j] < 0 {
                resultTime += array[i][j] * -1
                tempBlock += array[i][j]
                
            }
            
        }
    }
    if tempBlock < 0 {
        return Int.max
    }
    
    return resultTime
}
