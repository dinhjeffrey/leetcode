import Foundation

class Solution {
    func singleNumber(nums: [Int]) -> [Int] {
        var result = 0
        // store xor in result
        for num in nums {
            result ^= num
        }
        // Get its last set bit
        result &= -result
        var results = [Int](count: 2, repeatedValue: 0)
        for num in nums {
            if num & result == 0 { // the bit is not set
                results[0] ^= num
                results
            } else { // bit is set
                results[1] ^= num
                results
            }
        }
        return results
//        for index1 in 0..<nums.count-1 {
//            for index2 in index1+1..<nums.count {
//                let xor = nums[index1] ^ nums[index2]
//                switch xor {
//                case let x where x == result:
//                    return [nums[index1], nums[index2]]
//                default: // x < result
//                    break
//                }
//            }
//        }
//        return [0] // never reaches here
    }
}

let solution = Solution()
solution.singleNumber([1,2,1,3,2,5])
