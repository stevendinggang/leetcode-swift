//: [Previous](@previous)

import Foundation

/*
 给定一个整数数组，判断是否存在重复元素。
 
 如果任何值在数组中出现至少两次，函数返回 true。如果数组中每个元素都不相同，则返回 false。
 */


func containsDuplicate(nums: [Int]) -> Bool {
    return nums.count > Set(nums).count  //强转集合看看有没有 数组大 ,如果比数组小,就是有重复
}
























