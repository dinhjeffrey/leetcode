import Foundation

class Solution {
    func twoSum(numbers: [Int], _ target: Int) -> [Int] {
        for index1 in 0..<numbers.count-1 {
            innerLoop: for index2 in index1+1..<numbers.count {
                let sum = numbers[index1] + numbers[index2]
                switch sum {
                case let x where x == target:
                    return [index1+1, index2+1] // 1 based index
                case let x where x > target:
                    break innerLoop
                default: // x < target
                    break
                }
            }
        }
        return [0] // never reaches here
    }
}

let solution = Solution()
solution.twoSum([2,3,4], 6)
