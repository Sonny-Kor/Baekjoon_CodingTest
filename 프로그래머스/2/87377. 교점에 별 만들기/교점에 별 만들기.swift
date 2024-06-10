import Foundation
// solved 순서 : line의 갯수만큼 반복 -> 점 공식이용해서 true면 배열에 넣기 -> 
struct Pos: Hashable {
    let x : Double
    let y : Double
}
func solution(_ line:[[Int]]) -> [String] {
    var result : [Pos] = []
    for i in 0..<line.count{
        for j in i..<line.count{
            if i == j { continue }
            var A = Double(line[i][0])
            var B = Double(line[i][1])
            var E = Double(line[i][2])
            var C = Double(line[j][0])
            var D = Double(line[j][1])
            var F = Double(line[j][2])
            if A*D-B*C == 0 { continue }
            var X : Double = (B*F-E*D) / (A*D - B*C)
            var Y : Double = (E*C-A*F) / (A*D - B*C)
            if X == Double(Int(X)) && Y == Double(Int(Y)) { 
                result.append(Pos(x: X, y: Y))
            }
        }
    }
    let removedDuplicate: Set = Set(result)
    result = Array(removedDuplicate)
    var maxX : Double = -5555555555555
    var minX : Double = 5555555555555
    var maxY : Double = -5555555555555
    var minY : Double = 5555555555555
    
    for pos in result{
        if pos.x > maxX { maxX = pos.x }
        if pos.x < minX { minX = pos.x }
        if pos.y > maxY { maxY = pos.y }
        if pos.y < minY { minY = pos.y }
    }
    
    var width = Int(maxX-minX+1)
    var height = Int(maxY-minY+1)

    var printResult : [[Character]] = Array(repeating: Array(repeating: ".", count: width), count: height)
    
    for pos in result {
        printResult[Int(maxY-pos.y)][Int(pos.x-minX)] = "*"
    }
    var result2 = printResult.map{ String($0) }
    return result2
}