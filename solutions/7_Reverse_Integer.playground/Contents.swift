// #7 Reverse Integer https://leetcode.com/problems/reverse-integer/
// 这题本身很简单，但感觉是道不错的面试题。可以测试面试者是否考虑各种边界情况，对溢出有没有概念。
// 测试用例对 swift 给的不对，只能用 Int32.max。我是把负数统一归成正数来计算，这样判断溢出的语句可以简单点。
// 时间复杂度：O(lgn) 空间复杂度：O(1)

class Solution {
    func reverse(_ x: Int) -> Int {
        var isBelowZero = 1
        var num = x
        if x < 0 {
            isBelowZero = -1
            num = -x
        }
        
        var result = 0
        while num > 0 {
            if result > (Int(Int32.max) - num % 10) / 10 {
                return 0
            }
            result = result * 10 + num % 10
            num = num / 10
        }
        
        return result * isBelowZero
    }
}

Solution().reverse(1534236469)
