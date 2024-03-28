import Foundation


//    0 1
//    2 3
//    만약 N = 3일때 (2^(n-1) * 2^(n-1))
// 1 = 0.     16*0
// 2 = 16.    16*1
// 3 = 32.    16*2
// 4 = 48.    16*3
//    만약 N = 2일 때
// 1 =. 0     4 * 0
// 2.  4      4 * 1
// 3.  8      4 * 2
// 4.  12     4 * 3
//    만약 N = 1일 때
// 1 = 0.     1 * 0
// 2 = 1      1 * 1
// 3 = 2.     1 * 2
// 4 = 3      1 * 3
// 결론 :  (2^(n-1) * 2^(n-1)) * (어디에 위치해있는지)
let input: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var n = input[0]
var r = input[1]
var c = input[2]
var result = 0
search(n: n, r: r, c: c)

func search(n : Int, r: Int, c: Int){
    if n == 0 {
        return
    }
    if r < 0 || c < 0{
        return
    }
    
    
    // n이 2일땐 r이 2를 빼야하고 2^(n-1)
    var suspend = Int(pow(2.0, Double(n-1)))
    var cond = Int(pow(2.0, Double(n-1)))
    if r < cond && c < cond{
        // case 0
        result += suspend * suspend * 0
    }
    else if r < cond && c >= cond {
        // case 1
        result += suspend * suspend * 1
    }
    else if r >= cond && c < cond {
        // case 3
        result += suspend * suspend * 2
    }
    else {
        result += suspend * suspend * 3
    }
    
    
    var nextR : Int = r
    var nextC : Int = c
    let nextN = n - 1
    
    if suspend <= r {
        nextR -= suspend
    }
    if suspend <= c {
        nextC -= suspend
    }
    search(n: nextN, r: nextR, c: nextC)
}

print(result)
