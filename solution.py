class Solution:
    def rotateString(self, s: str, goal: str) -> bool:
        s = s + s
        for i in range(len(s) - len(goal)):
            if s[i:i + len(goal)] == goal:
                return True
        return False
