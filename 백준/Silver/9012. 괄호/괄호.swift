// https://www.acmicpc.net/problem/9012

let input = Int(readLine()!)!


func solution(_ input: [String]) {
    var stack : [String] = []
    for i: String in input {
        if stack.isEmpty {
            if i == ")" {
                stack.append("temp")
                break
            }else {
                stack.append(i)
            }

        }else {
            if i == ")" && stack.last == "("{

                stack.removeLast()
            }else if i == "(" {
                stack.append(i)
            }

        }


    }

    if stack.isEmpty {
        print("YES")
    }else {
        print("NO")
    }

}


for _ in 0..<input{
    solution(readLine()!.map { String($0) })
}

