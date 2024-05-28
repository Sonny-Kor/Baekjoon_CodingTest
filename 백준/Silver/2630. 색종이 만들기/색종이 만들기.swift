/*
 8
 1 1 0 0 0 0 1 1
 1 1 0 0 0 0 1 1
 0 0 0 0 1 1 0 0
 0 0 0 0 1 1 0 0
 1 0 0 0 1 1 1 1
 0 1 0 0 1 1 1 1
 0 0 1 1 1 1 1 1
 0 0 1 1 1 1 1 1
 */

var N = Int(readLine()!)!
var arr : [[Int]] = []
for i in 0..<N{
    var temp = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(temp)
}

var white = 0
var blue = 0


func solution(n: Int , x : Int,  y : Int ){
    
    
    var color = arr[y][x]
    for i in y..<y+n{
        for j in x..<x+n{
            if color != arr[i][j]{
                solution(n: n/2, x: x, y: y)
                solution(n: n/2, x: x+(n/2), y: y)
                solution(n: n/2, x: x, y: y+(n/2))
                solution(n: n/2, x: x+(n/2), y: y+(n/2))
                return
            }
        }
    }
    
    if color == 0 {
        white += 1
    }else {
        blue += 1
    }
    
    
    
    
}

solution(n: N, x: 0 , y: 0)

print(white)
print(blue)
