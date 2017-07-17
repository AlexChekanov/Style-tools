//
//  Guides.swift
//  Prcess
//
//  Created by Alexey Chekanov on 7/10/17.
//  Copyright © 2017 Alexey Chekanov. All rights reserved.
//

import UIKit

class Guides {
    
    
    
    class UIElements {
        
    }
    
    enum MyColor {
        case navigationBarBackgroundColor
        case navigationTintCololr
    }
    
    
    
    
    
    
    let textAttributes: [String : Any] = [
        NSBaselineOffsetAttributeName : 0
        ,NSStrikethroughStyleAttributeName : 2
        ,NSStrikethroughColorAttributeName : UIColor.lightGray.withAlphaComponent(0.8)
    ]
    
    
    
    
}


extension UIView {
    
    var shaded: UIView {
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2.0, height: 6.0)
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 0.8
        
        return self
    }
    
    
    
}



extension Guides.MyColor {
    var value: UIColor {
        get {
            switch self {
            case .navigationBarBackgroundColor:
                return UIColor(red: 67/255, green: 173/255, blue: 247/255, alpha: 1.0)
            case .navigationTintCololr:
                return UIColor.white
            }
        }
    }
}


var a = Guides.MyColor.navigationBarBackgroundColor



import UIKit
import Foundation

class Guides {
    
    class Colors {
        
    }
    
    
    class TextStyles {
        
    }
    
    
    
    enum Shades {
        case soft (ofColor: UIColor)
        case strong (ofColor: UIColor)
        
        var view: UIView {
            switch self {
            case .soft(let color):
                return {() -> UIView in
                    let view = UIView()
                    view.layer.shadowColor = color.cgColor
                    view.layer.shadowOpacity = 0.8
                    view.layer.shadowOffset = CGSize(width: 4, height: 4)
                    view.layer.shadowRadius = 8
                    view.layer.masksToBounds = false
                    return view
                    }()
            case .strong(let color):
                return UIView()
            }
        }
        
    }
    
}

//

var view = UIView()
view = Guides.Shades.soft(ofColor: #colorLiteral(red: 0.439215689897537, green: 0.0117647061124444, blue: 0.192156866192818, alpha: 1.0)).view


extension UIView {
    
    //    var shaded (withColor: UIColor): UIView {
    //
    //    }
    var shaded: UIView {
        
        enum shades {
            
            case soft (ofColor: UIColor)
            case hard (ofColor: UIColo)
        }
        
        let x = shades.self
        
        switch x {
        case .
        }
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2.0, height: 6.0)
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 0.8
        self.layer.masksToBounds = false
        
        return self
    }
    
    
    enum Shades {
        case soft (ofColor: UIColor)
        case strong (ofColor: UIColor)
        
        var view: UIView {
            switch self {
            case .soft(let color):
                return {() -> UIView in
                    let view = UIView()
                    view.layer.shadowColor = color.cgColor
                    view.layer.shadowOpacity = 0.8
                    view.layer.shadowOffset = CGSize(width: 4, height: 4)
                    view.layer.shadowRadius = 8
                    view.layer.masksToBounds = false
                    return view
                    }()
            case .strong(let color):
                return UIView()
            }
        }
    }
}


/* Ch 3 -> Collections, Tuples, and Enumerations */

import UIKit

/* Array Syntax */

var arrayOfFloats = [Float]()
var anotherFloatArray: [Float] = []

var placeholderArray: [Float]
var typeInferredArray = ["Item 1", "Item 2"]

// Methods and Dot Notation
typeInferredArray.count
typeInferredArray.isEmpty

// Adding, Inserting, and Removing
typeInferredArray[0] = "New Item"
typeInferredArray.append("Item 3")
typeInferredArray.insert("Item 4", at: 3)

typeInferredArray

// Value at Index
var itemAtIndex = typeInferredArray[0]
var itemInRange = typeInferredArray[0...2]

// Shorthand
var addingToArray: [Int] = [1, 2, 3, 4]
addingToArray += [5]



/* Exploring Dictionaries */

var emptyDict = [Int: String]()
var emptyAgain: [Int: String] = [:]

var placeholderDict: [Int: String]

var typeInferredDict = ["Key 1": "Value 1", "Key 2": "Value 2"]

// Methods and Dot Notation
var dictValues = [String](typeInferredDict.values)

// Adding, Inserting, and Removing
typeInferredDict["Key 3"] = "Value 3"
typeInferredDict.updateValue("Updated Value", forKey: "Key 3")
typeInferredDict.removeValue(forKey: "Key 3")

typeInferredDict



/* Tuples */

var basicTuple = (2, 3)
var descriptiveTuple = (playerLives: 2, playerName: "Harrison")

var firstValue = descriptiveTuple.0
var (first, second) = descriptiveTuple
first
second

var ourTuple: (playersLives: Int, playerName: String)
ourTuple.playerName = "John"
ourTuple.playersLives = 3



/* The Power of Swift Enums */

enum PlayerState_Basic {
    case Alive, KO, Unknown
}

var basicState = PlayerState_Basic.Alive
basicState.hashValue

// Raw Values
enum PlayerState_RawValues: Int {
    case Alive = 1, KO, Unknown
}

var rawValueEnum = PlayerState_RawValues.KO
rawValueEnum.hashValue
rawValueEnum.rawValue

var rawInitializedState = PlayerState_RawValues(rawValue: 3)

// Associated Values
enum PlayerState_AssociatedValues {
    case Alive
    case KO(restartLevel: Int)
    case Unknown(debug: String)
}

var associatedStateEnum = PlayerState_AssociatedValues.KO(restartLevel: 1)


/* Ch 4 -> Working with Logic Flows */

import UIKit

/* Traditional IF Statements */

var myAge = 27
var drivingAge = 16

if myAge >= drivingAge {
    print("Let's go get you a license")
} else {
    print("Sorry, you'll have to wait a bit")
}

var firstCondition: Bool = false
var secondCondition = false

if ((firstCondition == true) && (secondCondition == true)) {
    print("Continue with the operation")
} else if firstCondition {
    print("Only our first condition was met.")
} else {
    print("Neither conditions were met")
}



/* Using FOR-IN loops */

for i in 1...5 {
    print(i)
}

var itemArray = ["Item 1", "Item 2", "Item 3"]
for item in itemArray {
    print(item)
}

var levelDict = ["Level 1": 1, "Level 2": 2, "Level 3": 3]
for (levelName, levelNumber) in levelDict {
    print("\(levelName) => \(levelNumber)")
}

var firstName = "Harrison"
for char in firstName.characters {
    if char == "i" {
        continue
    } else if char == "s" {
        break
    }
    
    print(firstName)
}



/* The WHILE Loop */

var alive = true
var playerLives = 3

while alive {
    playerLives -= 1
    
    if playerLives <= 0 {
        alive = false
    }
    
    print("It's alive!")
}



/* The SWITCH Statement */

var catLives = 9

switch catLives {
case 1:
    print("I need to be careful here")
case 2...5:
    print("I can take some risks")
case 6..<9:
    print("I'm pretty comfortable here")
case 9:
    print("Fully loaded")
default:
    print("Too many risks")
}

var compoundCaseCheck = "h"

switch compoundCaseCheck {
case "h", "H":
    print("Hit!")
default:
    print("No match found")
}

var tupleCheck = ("Hello World", 23)

switch tupleCheck {
case ("Hello World", 20):
    print("Not it")
case ("Hello World", 23):
    print("Got one!")
default:
    print("Nothing here")
}

enum PlayerState {
    case Alive
    case KO(restartLevel: Int)
    
    var message: String {
        switch self {
        case .Alive:
            return "Phew, I made it"
        case .KO(let restartLevel):
            return "Back to \(restartLevel)"
        }
    }
}

var playerState = PlayerState.KO(restartLevel: 1)
playerState.message














