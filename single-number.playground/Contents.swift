import Foundation
class Solution {
    // MARK: - A ^ A ^ B = 0 ^ B = B
    // xor subtracts if number was already in result, else it adds to result (uses binary values)
    func singleNumber(nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result = num ^ result
        }
        return result
    }
}

let solution = Solution()
solution.singleNumber([1,2,1,3,2,5])

