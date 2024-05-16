

var N = Int(readLine()!)! // 크레인 갯수
var arrN = readLine()!.split(separator: " ").map{ Int($0)! } // 크래인 무게제한
let M = Int(readLine()!)! // 박스 갯수
var arrM = readLine()!.split(separator: " ").map { Int($0)! }

arrN.sort(by: >)
arrM.sort(by: >)

// 10 7 4
// 9 9 8 7 6 6 5 5 2

// 32 28 25 23
// 32 27 24 20 18 16 10 7 5 2

func solution() -> Int {
    if arrN.max()! < arrM.max()! { return -1 }
    var result = 0
    
    while(!arrM.isEmpty){
        var crainIdx = 0
        var boxIdx = 0
        while(boxIdx < arrM.count){
            if crainIdx < N && arrN[crainIdx] >= arrM[boxIdx] {
                arrM.remove(at: boxIdx)
                crainIdx += 1
            }else{
                boxIdx += 1
            }
        }
        result += 1
        
    }
    return result
}

print(solution())
