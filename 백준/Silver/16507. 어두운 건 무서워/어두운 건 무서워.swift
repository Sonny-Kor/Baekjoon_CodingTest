
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let R = input[0]
let C = input[1]
let Q = input[2]

var pixcel : [[Int]] = []
var pixcel_sum : [[Int]]  = Array(repeating: Array(repeating: 0, count: C+1), count: R+1)

for row in 0..<R{
    var input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
    pixcel.append(input2)
}

for row in 1...R{
    for col in 1...C{
//        input2[col] += pixcel[row-1][col] + pixcel[row][col-1] - pixcel[row-1][col-1]
        pixcel_sum[row][col] = pixcel_sum[row][col-1] + pixcel_sum[row-1][col] - pixcel_sum[row-1][col-1] + pixcel[row-1][col-1]
        
    }
    
}
for j in 0..<Q{
    let input3 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var x1 = input3[0]
    var x2 = input3[2]
    var y1 = input3[1]
    var y2 = input3[3]
    
    
    let count = (x2-x1+1) * (y2-y1+1)
    let result = pixcel_sum[x2][y2] - pixcel_sum[x1-1][y2] - pixcel_sum[x2][y1-1] + pixcel_sum[x1-1][y1-1]
    print(result/count)
    
}

/*
 
 5 6 1
 
 4 1 3 4 9 5
 1 2 8 7 5 5
 8 1 2 5 3 2
 1 5 3 4 2 5
 5 2 1 2 3 5
 
 [0, 0, 0, 0, 0, 0, 0]
 [0, 4, 5, 8, 12, 21, 26]
 [0, 5, 8, 19, 30, 44, 54]
 [0, 13, 17, 30, 46, 63, 75]
 [0, 14, 23, 39, 59, 78, 95]
 [0, 19, 30, 47, 69, 91, 113]
 
 */
//for i in pixcel_sum{
//    print(i)
//}
//
//var result : [Int] = []
//for i in 0..<Q{
//    let input3 = readLine()!.split(separator: " ").map{ Int(String($0))! }
//
//    
//    var sum = 0
//    var count = 0
//    for j in input3[0]...input3[2]{
//        for k in input3[1]...input3[3]{
//            sum += pixcel[j-1][k-1]
//            count += 1
//        }
//    }
//    result.append(sum/count)
//}
//
//for i in result{
//    print(i)
//}


