import Foundation

class Solution {
    func singleNumber(nums: [Int]) -> [Int] {
        var result = 0
        for num in nums {
            result = num ^ result
        }
        for index1 in 0..<nums.count-1 {
            for index2 in index1+1..<nums.count {
                let xor = nums[index1] ^ nums[index2]
                switch xor {
                case let x where x == result:
                    return [nums[index1], nums[index2]]
                default: // x < result
                    break
                }
            }
        }
        return [0] // never reaches here
    }
}

let solution = Solution()
solution.singleNumber([1,2,1,3,2,5])
