//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

var nums = [0,2,4,6,6,7,12,23,24,25,26,27,223,234]

func indexMiddle(for element: Int,storage: [Int]) -> Int {
    var start = 0
    var end = storage.count
    while start < end {
        let middle = start + (end - start) / 2
        if element > storage[middle] {
            start = middle + 1
        }
        else {
            end = middle
        }
    }
    return start
}

//MARK - 二分排序by s
func indexMidlle(arr: [Int],number:Int) -> Int{
    var start = 0
    var end = arr.count
    
    while start<end {
        let middle = start + (end-start)/2  //获取中间值
        if number > arr[middle] {
            start = middle+1  //加1
        }else{
            end = middle
        }
    }
    return start
}

print(nums)


indexMiddle(for: 27, storage: nums)






indexMidlle(arr: nums, number: 25)




































