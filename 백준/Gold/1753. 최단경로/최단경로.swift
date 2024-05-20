struct Heap <T: Comparable> {
    var heap = [T]()
    
    private func getParent(_ index: Int) -> T {
        heap[index / 2]
    }

    private func getLeftChild(_ index: Int) -> T {
        heap[index * 2]
    }

    private func getRightChild(_ index: Int) -> T {
        heap[index * 2 + 1]
    }

    func isEmpty() -> Bool {
        heap.count <= 1
    }

    mutating func insert(_ data: T) {
        if isEmpty() { heap.append(data) }
        var index = heap.count
        heap.append(data)

        while index > 1 {
            let parent = getParent(index)
            guard parent > data else { break }
            heap[index] = parent
            index /= 2
        }
        heap[index] = data
    }

    mutating func remove() -> T? {
        guard !isEmpty() else { return nil }
        let item = heap[1]
        let data = heap.removeLast()
        let size = heap.count - 1

        guard !isEmpty() else { return item }
        var (parent, child) = (1, 2)
        while child <= size {
            if child < size && getLeftChild(parent) > getRightChild(parent) {
                child += 1
            }
            guard data > heap[child] else { break }
            heap[parent] = heap[child]
            parent = child
            child *= 2
        }
        heap[parent] = data
        return item
    }
}

struct Node: Comparable {
    let next: Int
    let weight: Int
    
    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.weight < rhs.weight
    }
}

func solution(start: Int) {
    var queue = Heap<Node>()
    var visited = [Bool](repeating: false, count: V + 1)
    result[start] = 0
    queue.insert((Node(next: start, weight: 0)))

    while(!queue.isEmpty()) {
        let current = queue.remove()!
        visited[current.next] = true
        
        if let edgeList = graph[current.next] {
            for edge in edgeList {
                let temp = current.weight + edge.weight
                if temp < result[edge.next] && visited[edge.next] == false {
                    result[edge.next] = temp
                    queue.insert(Node(next: edge.next, weight: temp))
                }
            }
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
var V = input[0]
var E = input[1]
let K = Int(readLine()!)!
var graph : [Int: [Node]] = [:]
var result : [Int] = Array(repeating: Int.max, count: V+1)
for i in 1...V {
    graph[i] = []
}

for _ in 0..<E {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let u = input[0]
    let v = input[1]
    let w = input[2]
    graph[u]!.append(Node(next: v, weight: w))
}

solution(start: K)
for i in 1...V {
    if result[i] == Int.max{
        print("INF")
    }else {
        print(result[i])
    }
}
