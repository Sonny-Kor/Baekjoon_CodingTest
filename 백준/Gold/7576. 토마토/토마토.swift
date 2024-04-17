
var input = readLine()!.split(separator: " ").map { Int($0)! }
var col = input[0]
var row = input[1]

class Queue<T>{
    var enqueue: [T]
    var dequeue: [T] = []
    
    var isEmpty: Bool{
        return enqueue.isEmpty && dequeue.isEmpty
    }
    var count: Int{
        return enqueue.count + dequeue.count
    }
    
    init(_ queue:[T]){
        self.enqueue = queue
    }
    
    func push(_ n: T){
        enqueue.append(n)
    }
    
    func pop() -> T?{
        if dequeue.isEmpty{
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
    
}

struct Pos {
    var x : Int
    var y : Int
    
    static func + (left: Pos , right: Pos) -> Pos {
        return Pos(x: left.x+right.x, y: left.y+right.y)
        
    }
}
var queue = Queue<Pos>([])

var array : [[Int]] = []
for i in 0..<row{
    var input2 = readLine()!.split(separator: " ").map{Int($0)!}
    
    
    for (j,v) in input2.enumerated(){
        if v == 1 {
            queue.push(Pos(x: j, y: i))
        }
        else if v == 0 {
            input2[j] = 9999
        }
    }
    array.append(input2)
}

let Direction : [Pos] = [
    Pos(x: 0, y: -1),  //위
    Pos(x: -1, y: 0),  //왼
    Pos(x: 0, y: 1),  //아
    Pos(x: 1, y: 0),  //우
]


while(!queue.isEmpty){
    let curPos = queue.pop()!
    for p in Direction{
        var curPos2 = curPos + p
        if curPos2.x < 0 || curPos2.x >= col || curPos2.y < 0 || curPos2.y >= row || array[curPos2.y][curPos2.x] == -1 || array[curPos2.y][curPos2.x] == -1 || array[curPos2.y][curPos2.x] != 9999{
            continue
        }
        array[curPos2.y][curPos2.x] = array[curPos.y][curPos.x] + 1
        queue.push(curPos2)
    }
}

var result = -1
for i in array{
    for j in i{
        if j > result {
            result = j
        }
    }
}
if result == 9999{
    result = 0
}
print(result-1)
