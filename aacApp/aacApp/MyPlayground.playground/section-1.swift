// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let constantString:String = "Swift and iOS 8 are awesome..."
var variableString:String = "Swift and iOS 8 are awesome..."

let allStrings:Array = [constantString, variableString]

var allInts:Array = [Int]()

allInts.append(24)
allInts.append(25)
println(allInts[0])
allInts.insert(26, atIndex: 0)
// how to edit and element in an array...
allInts[0] = 30
println(allInts)

var allFullNames = [
    "Ryan" : "Poplin",
    "Harry" : "Poplin"
] as [String : AnyObject]
println(allFullNames["Ryan"])
allFullNames["Harry"] = 24

struct Shortcut {
    var shortcut:String
    mutating func setShortcutTo(shortcut:String) {
        self.shortcut = shortcut
    }
}

