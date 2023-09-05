import Foundation

final class SelectionSort {
    func sort(_ nums: [Int]) -> [Int] {
        if nums.count <= 1 {
            return nums
        }
        
        var arr = nums
        for i in 0..<arr.count-1 {
            var minIndex = i
            for j in i+1..<arr.count {
                minIndex = arr[j] < arr[minIndex] ? j : minIndex
            }
            arr.swapAt(i, minIndex)
        }
        return arr
    }
}
