class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        if s.count != goal.count {
            return false
        }

        let doubled = s + s
        let goalCount = goal.count
        let doubledArray = Array(doubled)
        let goalArray = Array(goal)

        for i in 0..<(doubledArray.count - goalCount + 1) {
            if Array(doubledArray[i..<i + goalCount]) == goalArray {
                return true
            }
        }

        return false
    }
}
