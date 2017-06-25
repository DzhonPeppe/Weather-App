//: Playground - noun: a place where people can play

import UIKit


//Shape 1
var length = 5
var width = 10

var area = length * width
//Shape 2
var length2 = 6
var width2 = 12

var area2 = length2 * width2
//Shape 3
var length3 = 3
var width3 = 8

var area3 = length3 * width3

func calculateArea(length: Int, width: Int) -> Int {
    return length * width
    
}

let shapeOne = calculateArea(length: 5, width: 4)
let shapeTwo = calculateArea(length: 6, width: 2)
let shapeThree = calculateArea(length: 3, width: 8)

var bankAccountBalance = 500.00
var sigourneyWeaverAlienStomperShoes = 350.00

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchased item for: $\(itemPrice)")
        return currentBalance - itemPrice
    } else {
        print("You are broke. You should learn how to save money!")
        return currentBalance
    }
}

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: sigourneyWeaverAlienStomperShoes)

var retroLunchBox = 40.00

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: retroLunchBox)



