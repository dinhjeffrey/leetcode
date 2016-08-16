class Solution {
    func reverseString(s: String) -> String {
        var newS = String()
        for char in s.characters.reverse() {
            newS.append(char)
        }
        return newS
    }
}

