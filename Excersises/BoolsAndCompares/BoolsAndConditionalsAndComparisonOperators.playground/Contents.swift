//: Playground - noun: a place where people can play

import UIKit

var amITheBestTeacherEver: Bool = true

amITheBestTeacherEver = false

if true == false || true == true {
    print("WTFish")
}
var hasDataFinishedDownloading: Bool = false

if !hasDataFinishedDownloading {
    print("Loading data...")
}

var bankBalance = 400.00
var itemToBuy = 100.00

if itemToBuy > bankBalance {
    print("You need more money")
}

if itemToBuy == bankBalance {
    print("Your balance is now 0")
}


