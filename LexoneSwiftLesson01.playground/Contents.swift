import Foundation

// Алгоритм бинарного поиска

func binarySearch(list: Array<Int>, item: Int) -> Any {
    var low = 0
    var high = list.count - 1

    while low <= high {
        let mid = (low + high) / 2
        let guess = list[mid]
        if guess == item {
            return "item found at index - \(mid)"
        }
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }

    return "item doesnt exist"
}

var list: [Int] = []

list = [1, 12, 13, 14, 23, 25, 27, 34, 59, 69, 89]

var result = binarySearch(list: list, item: 90)
