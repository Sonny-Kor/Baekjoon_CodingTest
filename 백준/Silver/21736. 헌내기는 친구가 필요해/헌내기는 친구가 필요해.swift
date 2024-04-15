import Foundation
let input : [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var arr : [[Character]] = []

struct Position {
    var x : Int
    var y : Int
    
    func adding(_ other: Position) -> Position {
            return Position(x: self.x + other.x, y: self.y + other.y)
    }
}
let dir : [Position] = [
    Position(x: 0, y: -1), //위
    Position(x: -1, y: 0), //왼
    Position(x: 0, y: 1), // 아
    Position(x: 1, y: 0) // 우
]
var I : Position = Position(x: 0, y: 0)

for i in 0..<input[0]{
    let str = readLine()!
    if str.contains("I"){
        let index = str.firstIndex(of: "I")!
        let position = str.distance(from: str.startIndex, to: index)
        I.x = position
        I.y = i
    }
    arr.append(str.map{Character(extendedGraphemeClusterLiteral: $0)})
    
}
var result = 0
func searchP(){
        
    var queue : [Position] = []
//    var visit : [[Bool]] = Array(repeating: Array(repeating: false, count: input[1]), count: input[0])
    queue.append(I)
    while(!queue.isEmpty){
        
        var cur = queue.popLast()!
        for i in dir{
            var nextPos = cur.adding(i)
            
            if nextPos.x < 0 || nextPos.x >= input[1] || nextPos.y < 0 || nextPos.y >= input[0] {
                continue
            }
            if arr[nextPos.y][nextPos.x] == "X"{
                continue
            }
            if arr[nextPos.y][nextPos.x] == "P"{
                result += 1
            }
            
            arr[nextPos.y][nextPos.x] = "X"
            queue.append(nextPos)
        }
        
        
    }
}
searchP()
if result == 0{
    print("TT")
}else{
    print(result)
}


