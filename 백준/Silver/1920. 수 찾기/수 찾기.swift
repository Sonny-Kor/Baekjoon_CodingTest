let N: Int = Int(readLine()!)!
let N_array: Set<Int> = Set(readLine()!.split(separator: " ").map { Int($0)! })
let M: Int = Int(readLine()!)!
let M_array: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

M_array.forEach{
    print(N_array.contains($0) ? 1 : 0)
}