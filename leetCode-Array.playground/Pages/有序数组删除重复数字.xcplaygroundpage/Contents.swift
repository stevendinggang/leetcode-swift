//: [Previous](@previous)

import Foundation

var nums = [-1,0,0,2,4,6,6,12] //顺序变大的数组

func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    guard nums.count > 0 else {
        return 0
    }
    var index = 0
    for num in nums where num != nums[index] { // 遍历循环数组,num与下一个num 不相等时进入
        index += 1
        
        nums[index] = num //修改数组  变成下一个不相等 数组内数值
        
        print(num)
        print(nums[index])
        print(index)
        print(nums)
    }
    
    while nums.count > index + 1 { //获取删除后数组
        nums.removeLast()
    }
    return index + 1 //备注 index +1 是 0,1,2,3 的3长度,获取全部的长度需要修改 nums 截取到 index+1
}

removeDuplicates(&nums)
print(nums)
print(nums.count)
