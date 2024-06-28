let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0]
let M = NM[1]

var arr : [Int] = []

func solution(_ j : Int) {
    if arr.count == M {
        print(arr.map{ String($0) }.joined(separator: " "))
    }
    else {
        for i in j...N{
            arr.append(i)
            solution(i)
            arr.popLast()
        }
    }
}

solution(1)
