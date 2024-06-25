var input = readLine()!.split(separator: " ").map{ Int($0)! }

var result = 0

for i in 0..<7{
    if input[i] - input[i+1] == 1{
        result = 2
    }else if input[i] - input[i+1] == -1 {
        result = 1
    }else{
        result = 0
        break
    }
}
if result == 1 {
    print("ascending")
}else if result == 2 {
    print("descending")
}else {
    print("mixed")
}
