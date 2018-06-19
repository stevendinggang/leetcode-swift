//: [Previous](@previous)

import Foundation
/*
 给定一个数组，它的第 i 个元素是一支给定股票第 i 天的价格。
 
 设计一个算法来计算你所能获取的最大利润。你可以尽可能地完成更多的交易（多次买卖一支股票）。
 
 注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。
 
 示例 1:
 
 输入: [7,1,5,3,6,4]
 输出: 7
 解释: 在第 2 天（股票价格 = 1）的时候买入，在第 3 天（股票价格 = 5）的时候卖出, 这笔交易所能获得利润 = 5-1 = 4 。
 随后，在第 4 天（股票价格 = 3）的时候买入，在第 5 天（股票价格 = 6）的时候卖出, 这笔交易所能获得利润 = 6-3 = 3 。

 */

func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 0 else {
        return 0
    }
    
    var maxProfit = 0
    var finalMaxProfit = 0
    var maxProfitLeft = [Int]()
    var low = prices.first!
    var high = prices.last!
    
    for price in prices {
        maxProfit = max(price - low, maxProfit)
        low = min(price, low)
        maxProfitLeft.append(maxProfit)
    }
    
    maxProfit = 0
    for i in (0..<prices.count).reversed() {
        let price = prices[i]
        maxProfit = max(high - price, maxProfit)
        high = max(price, high)
        finalMaxProfit = max(finalMaxProfit, maxProfit + maxProfitLeft[i])
    }
    return finalMaxProfit
}


































