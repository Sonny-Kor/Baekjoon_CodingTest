import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let K = input[0], N = input[1]
var arr : [Int] = []
for _ in 0..<K{
    arr.append(Int(readLine()!)!)
}

func condition(_ mid: Int) -> Bool {
    let cnt = arr.map{ $0 / mid }.reduce(0,+)
    return cnt < N // 너무 크게 자른경우 True
}

func binarySearch() -> Int{
    var start = 1
    var end = arr.max()!
    while(start <= end){
        let mid = (start + end) / 2
        if condition(mid){
            end = mid - 1
        }else {
            start = mid + 1
        }
    }
    return end
}

print(binarySearch())
