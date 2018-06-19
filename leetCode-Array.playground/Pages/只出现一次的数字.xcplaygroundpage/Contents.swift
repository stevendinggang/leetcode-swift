//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*
 给定一个非空整数数组，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元素。
 */

var nums = [1,1,2,4,4,6,6,12,12,18,18,20,20] //测试数组


func singleNumber(_ nums: [Int]) -> Int {
    if nums.count == 1 {
        return nums[0]
    }
    var res:Int = 0
    
    //相同数字做^异或运算，会得到0 ,不同会得到真
    //若存在一个数字只出现一次，那么该数组所有元素 异或结果 大于0
    
    for i in nums {
        res ^= i; //遍历异或
        print(res)
    }
    return res
}


singleNumber(nums)



