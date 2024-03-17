import Foundation

struct Pos{
    var x : Int
    var y : Int
}

struct CustomQueue<T>{
    private var data = [T]()
    public init() {}
    public mutating func enqueue(_ element: T){
        data.append(element)
    }
    public mutating func dequeue() -> T? {
        return data.removeFirst()
    }
    public func isEmpty() -> Bool {
        return data.isEmpty
    }
}

func solution(_ maps:[String]) -> Int {
    
    var mapArr : [[Character]] = []
    let mapWidth = maps[0].count
    let mapHeight = maps.count
    let offSet : [Pos] = [Pos(x: 1,y: 0), Pos(x: 0,y: 1), Pos(x: 0,y: -1), Pos(x: -1,y: 0)]
    var sPos : Pos = .init(x: -1, y: -1)
    var lPos : Pos = .init(x: -1, y: -1)
    
    
    for (rowIndex, row) in maps.enumerated() {
        for (columnIndex, value) in row.enumerated() {
            if value == "S" {
                sPos = .init(x: columnIndex, y: rowIndex)
            }
            else if value == "L" {
                lPos = .init(x: columnIndex, y: rowIndex)
            }
        }
        mapArr.append(Array(row))
    }
    
    
    func bfs(startPos : Pos , search : Character) -> Int?{
        var visited = Array(repeating: Array(repeating: -1, count: mapWidth), count: mapHeight)
        var Queue = CustomQueue<Pos>()
        Queue.enqueue(startPos)
        visited[startPos.y][startPos.x] = 0
        while(!Queue.isEmpty()){
            let posi : Pos = Queue.dequeue() ?? Pos(x: -2, y: -2)
            let x = posi.x
            let y = posi.y
            for p in offSet{
                let nx = x + p.x
                let ny = y + p.y
                if 0 <= nx && nx < mapWidth && 0 <= ny && ny < mapHeight {
                    if mapArr[ny][nx] != "X" && visited[ny][nx] == -1 {
                        if mapArr[ny][nx] == search {
                            return visited[y][x] + 1
                        }
                        visited[ny][nx] = visited[y][x] + 1
                        Queue.enqueue(Pos(x: nx, y: ny))
                        }
                    }
                }
            }
        return nil
    }
    guard let goL = bfs(startPos: sPos, search: "L") else { return -1 }
    guard let goE = bfs(startPos: lPos, search: "E") else { return -1 }
    return goL + goE
          
}
