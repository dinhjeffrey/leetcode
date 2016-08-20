import Foundation

class Solution {
    func countBits(num: Int) -> [Int] {
        var nums = [Int](count: num+1, repeatedValue: 0)
        if num == 0 { // if num is 0
            return nums
        }
        for i in 1...num {
            nums[i] = binaryOnes(i)
        }
        return nums
    }
    func binaryOnes(num: Int) -> Int {
        var num = num
        var count = 0
        repeat  {
            if num % 2 == 0 { // even numbers
                num /= 2
            } else { // all odd numbers
                num = (num-1)/2
                count += 1
            }
        } while num > 1
        if num == 1 { // when num is 1 at the end
            count += 1
        }
        return count
    }
}

let solution = Solution()
solution.countBits(0)

