class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        temp = n
        sum = 0
        product = 1

        while temp > 0:
            digit = temp % 10
            product = digit * product
            add = temp % 10
            sum = sum + add
            temp = temp // 10

        result = product - sum
        return result