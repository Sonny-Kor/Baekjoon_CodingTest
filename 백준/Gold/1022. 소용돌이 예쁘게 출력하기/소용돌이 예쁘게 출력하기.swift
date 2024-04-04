import Foundation

// 1  1 2  2  // 3 3  4 4    //  5  5  6 6  // 7  7 8 8 : maxStep
// 오 위 왼 아  // 오 위 왼 아  //  오 위 왼 아. // 오 위 왼 아 : direction

struct dir {
    let x : Int
    let y : Int
}
let direction : [dir] = [
    dir(x: 1, y: 0), // 오른 쪽
    dir(x: 0, y: -1), // 위
    dir(x: -1, y: 0), // 왼쪽
    dir(x: 0, y: 1) // 아래
]

func fillArr() {
    var y = 0, x = 0
    var fillCnt = 0
    var maxStep = 1
    var currentStep = 0
    var num = 1
    var dir = 0

    while (true) {
        
        if (r1 <= y && y <= r2 && c1 <= x && x <= c2) {
            arr[y - r1][x - c1] = num
            fillCnt += 1
           
        }
        
        if (fillCnt == (r2-r1+1)*(c2-c1+1)) {
            break
        }
        
        // 소용돌이 슈웃
        currentStep += 1
        num += 1
        y += direction[dir % 4].y
        x += direction[dir % 4].x
        
        if (currentStep == maxStep) {
            currentStep = 0
            dir = dir + 1
            if (dir % 2 == 0) {
                maxStep += 1
            }
        }
    }
}

func printArr(){
    var maxValue = 0
    for i in r1...r2 {
        for j in c1...c2 {
            maxValue = max(arr[i - r1][j - c1], maxValue)
        }
    }
    let maxLength = String(maxValue).count
    
    /*
     for n in 1...5 {
         print(n, terminator: "")
     }
     */
    
    
    var outputString = ""

    for i in r1...r2 {
        var rowString = ""
        for j in c1...c2 {
            let formattedString = String(format: "%\(maxLength)d ", arr[i - r1][j - c1])
            rowString += formattedString
        }
        outputString += rowString + "\n"
    }

    print(outputString)
    
}


var r1 = 0, c1 = 0, r2 = 0, c2 = 0
let input = readLine()!.split(separator: " ").map{ Int($0)! }
r1 = input[0]
c1 = input[1]
r2 = input[2]
c2 = input[3]
var arr : [[Int]] = Array(repeating: Array(repeating: 0, count: c2-c1+1), count: r2-r1+1)

fillArr()
printArr()

