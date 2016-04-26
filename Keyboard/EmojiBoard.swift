//
//  Catboard.swift
//  TransliteratingKeyboard
//
//  Created by Alexei Baboulevitch on 9/24/14.
//  Copyright (c) 2014 Alexei Baboulevitch ("Archagon"). All rights reserved.
//

import UIKit

/*
This is the demo keyboard. If you're implementing your own keyboard, simply follow the example here and then
set the name of your KeyboardViewController subclass in the Info.plist file.
*/

let kEmojiType = "kCatTypeEnabled"

let dict = [":)": "😀",
    "grinning face": "😀",
    "eek": "😁",
    "crying tears of joy": "😂",
    "lol": "😂lol😂",
    "lolz": "😂lolz😂",
    "haha": "😂haha😂",
    "yay": "yay 😃",
    "smiling eyes": "😄",
    "sweating": "😅",
    "oops": "oops 😅",
    "squinting": "😆",
    "angel": "😇",
    "devil": "😈",
    "evil": "😈",
    "muahaha": "😈",
    "imp": "👿",
    "wink": "😉",
    ";)": "😉",
    "ya know": "😉",
    "you know": "😉",
    "winking": "😉",
    "blushing": "😊",
    "ur welcome": "😊 ur welcome 😊",
    "you're welcome": "you're welcome 😊",
    "np": "no problem 😊",
    "no problem": "no problem 😊",
    "i'm embarrassed": "☺️",
    "tongue out": "😋",
    "i'm relieved": "😌",
    "heart eyes": "😍",
    "love that": "😍",
    "cool": "😎",
    "hehe": "hehe 😏",
    "ummmmm": "ummmmm 😐",
    "over it": "😒",
    "tired": "😓",
    "ashamed": "😔",
    "wut": "wut 😕",
    "confounded": "😖",
    "kisses": "😘",
    "kissing": "😚",
    "blergh": "😛",
    "crazy": "crazy 😜",
    "bummed": "bummed 😞",
    "nooo": "nooo 😟",
    "mad": "😠",
    "angry": "😡",
    "sosad": "😢",
    "fuming": "😤",
    "sad": "😥",
    "umm": "umm 😦",
    "blueman": "😨",
    "wailing": "😩",
    "yikes": "😬",
    "noooo": "noooo 😭",
    "died": "died 😲",
    "sleeping": "😴",
    "none": "😶",
    "sick": "sick 😷",
    "gross": "😷",
    "stay away": "😷",
    "cat": "😸",
    "laughcat": "😹",
    "footsteps": "👣",
    "walk": "👣",
    "avatar": "👤",
    "friends on fb": "👥 on fb",
    "babe": "👶",
    "boy": "👦",
    "girl": "👧",
    " man": " 👨",
    "woman": "👩",
    "fam": "👪",
    "family": "👪",
    "gayfam": "👨‍👨‍👧",
    "gayfamily": "👨‍👨‍👧",
    "couple": "👫",
    "dating": "👫",
    "gaycouple": "👬",
    "gay": "👬",
    "dancing": "👯",
    "bride": "👰🏼",
    "marry": "👰🏼",
    "married": "👰🏼",
    "turban": "👳",
    "oldman": "👴",
    "oldwoman": "👵",
    "policeman": "👮",
    "police": "👮",
    "princess": "👸",
    "london": "💂london💂",
    "🍼 angel": "👼🏼",
    "santa": "🎅🏻",
    "christmas": "🎅🏻🎄🎁",
    "ghost": "👻",
    "spirit": "👻",
    "snapchat": "👻",
    "poop": "💩",
    "dead": "💀",
    "death": "💀",
    "alien": "👽",
    "whatever": "💁🏻",
    "no way": "🙅🏼",
    "praise": "🙌🏻",
    "yaassss": "🙌🏻",
    "claps": "👏🏻",
    "clapping": "👏🏻",
    "ear": "👂🏻",
    "listening": "👂🏻",
    " i": " 👀",
    "eyes": "👀",
    "look": "👀",
    "see": "👀",
    "seeing": "👀",
    "looking": "👀",
    "nose": "👃🏻",
    "smell": "👃🏻",
    "smelling": "👃🏻",
    "lips": "👄",
    "lip": "👄",
    "kiss": "💋",
    "smooch": "💋",
    "tongue": "👅",
    "manicure": "💅🏻",
    "waving": "👋🏻",
    "thumbs up": "👍🏻",
    "got it": "👍🏻",
    "thumbs down": "👎🏻",
    "number one": "☝🏻",
    "fish": "🐠",
    "tomato": "🍅",
    "eggplant": "🍆",
    "dick": "🍆",
    "cock": "🍆",
    "penis": "🍆",
    "disco stick": "🍆",
    "corn": "🌽",
    "maize": "🌽",
    "yam": "🍠",
    "cheese": "🧀",
    "grapes": "🍇",
    "melon": "🍈",
    "watermelon": "🍉",
    "orange": "🍊",
    "tangerine": "🍊",
    "lemon": "🍋",
    "banana": "🍌",
    "pineapple": "🍍",
    "apple": "🍎",
    "granny smith": "🍏",
    "apples": "🍎🍏",
    "pear": "🍐",
    "peach": "🍑",
    "peaches": "🍑",
    "ass": "🍑",
    "booty": "🍑",
    "butt": "🍑",
    "cherry": "🍒",
    "cherries": "🍒🍒",
    "strawberry": "🍓",
    "strawberries": "🍓",
    "hamburger": "🍔",
    "hamburgers": "🍔",
    "burger": "🍔",
    "burgers": "🍔",
    "pizza": "🍕",
    "za": "🍕",
    "chicken": "🍖",
    "drumstick": "🍗",
    "rice cracker": "🍘",
    "rice ball": "🍙",
    "rice": "🍚",
    "curry": "🍛",
    "ramen": "🍜",
    "noodles": "🍜",
    "spaghetti": "🍝",
    "pasta": "🍝",
    "bread": "🍞",
    "fries": "🍟",
    "hotdog": "🌭",
    "taco": "🌮",
    "tacos": "🌮",
    "burrito": "🌯",
    "dango": "🍡",
    "oden": "🍢",
    "sushi": "🍣",
    "shrimp": "🍤",
    "swirl": "🍥",
    "ice cream": "🍦",
    "sno cone": "🍧",
    "🍦 bowl": "🍨",
    "donut": "🍩",
    "donuts": "🍩",
    "cookie": "🍪",
    "chocolate": "🍫",
    "popcorn": "🍿",
    "candy": "🍬",
    "eggs": "🍳",
    "egg": "🍳",
    "wine": "🍷",
    "beer": "🍺",
    "beers": "🍻",
    "vino": "🍷",
    "martini": "🍸",
    "cocktail": "🍹",
    "pina colada": "🍹",
    "tropical drink": "🍹",
    "champagne": "🍾",
    "bubbly": "🍾",
    "baby": "🍼",
    "bottle": "🍼",
    "love": "❤️",
    "heart": "❤️",
    "carol": "slut",
    "soccer": "⚽️",
    "basketball": "🏀",
    "football": "🏈",
    "baseball": "⚾️",
    "tennis": "🎾",
    "volleyball": "🏐",
    "rugby": "🏉",
    "billiards": "🎱",
    "golf": "⛳️",
    "golfer": "🏌",
    "ping pong": "🏓",
]


class EmojiBoard: KeyboardViewController {
    
    let takeDebugScreenshot: Bool = false
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        NSUserDefaults.standardUserDefaults().registerDefaults([kEmojiType: true])
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func keyPressed(key: Key) {
        let textDocumentProxy = self.textDocumentProxy
        
        let keyOutput = key.outputForCase(self.shiftState.uppercase())
        
        if !NSUserDefaults.standardUserDefaults().boolForKey(kEmojiType) {
            textDocumentProxy.insertText(keyOutput)
            return
        }
        if key.type == .Space {
            if let context = textDocumentProxy.documentContextBeforeInput {
                
                var index = context.endIndex
                
                index = index.predecessor()
                
                // emoji!
                let context_length = context.characters.count
                for (word, emoji) in dict {
                    let length = word.characters.count
                    if length > context_length {
                        continue
                    }
                    let subStr = context.substringFromIndex(context.endIndex.advancedBy(-length))
                    if (subStr.caseInsensitiveCompare(word) == NSComparisonResult.OrderedSame) {
                        for _ in 0...(length-1) { textDocumentProxy.deleteBackward() }
                        textDocumentProxy.insertText(emoji)
                        textDocumentProxy.insertText(keyOutput)
                        return
                    }
                }
                if (context.substringFromIndex(context.endIndex.advancedBy(-1)) == "s") {
                    var index = context.endIndex
                    
                    index = index.predecessor().predecessor()
                    
                    // emoji!
                    let context_length = context.characters.count-1
                    let sub_context = context.substringToIndex(context.endIndex.advancedBy(-1))
                    for (word, emoji) in dict {
                        let length = word.characters.count
                        if length > context_length {
                            continue
                        }
                        let subStr = sub_context.substringFromIndex(sub_context.endIndex.advancedBy(-length))
                        if (subStr.caseInsensitiveCompare(word) == NSComparisonResult.OrderedSame) {
                            for _ in 0...length { textDocumentProxy.deleteBackward() }
                            textDocumentProxy.insertText(emoji+emoji)
                            textDocumentProxy.insertText(keyOutput)
                            return
                        }
                    }
                }
                textDocumentProxy.insertText(keyOutput)
                return
            }
        }
        
        if key.type == .Character || key.type == .SpecialCharacter {
            if let context = textDocumentProxy.documentContextBeforeInput {
                if context.characters.count < 2 {
                    textDocumentProxy.insertText(keyOutput)
                    return
                }
                
                var index = context.endIndex
                
                
                index = index.predecessor()
                
                if context[index] != " " {
                    textDocumentProxy.insertText(keyOutput)
                    return
                }
                
                index = index.predecessor()
                if context[index] == " " {
                    textDocumentProxy.insertText(keyOutput)
                    return
                }
                
                textDocumentProxy.insertText(keyOutput)
                return
            }
            else {
                textDocumentProxy.insertText(keyOutput)
                return
            }
        }
        else {
            textDocumentProxy.insertText(keyOutput)
            return
        }
    }
    
    override func setupKeys() {
        super.setupKeys()
        
        if takeDebugScreenshot {
            if self.layout == nil {
                return
            }
            
            for page in keyboard.pages {
                for rowKeys in page.rows {
                    for key in rowKeys {
                        if let keyView = self.layout!.viewForKey(key) {
                            keyView.addTarget(self, action: "takeScreenshotDelay", forControlEvents: .TouchDown)
                        }
                    }
                }
            }
        }
    }
    
    override func createBanner() -> ExtraView? {
        return CatboardBanner(globalColors: self.dynamicType.globalColors, darkMode: false, solidColorMode: self.solidColorMode())
    }
    
    func takeScreenshotDelay() {
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("takeScreenshot"), userInfo: nil, repeats: false)
    }
    
    func takeScreenshot() {
        if !CGRectIsEmpty(self.view.bounds) {
            UIDevice.currentDevice().beginGeneratingDeviceOrientationNotifications()
            
            let oldViewColor = self.view.backgroundColor
            self.view.backgroundColor = UIColor(hue: (216/360.0), saturation: 0.05, brightness: 0.86, alpha: 1)
            
            let rect = self.view.bounds
            UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
            _ = UIGraphicsGetCurrentContext()
            self.view.drawViewHierarchyInRect(self.view.bounds, afterScreenUpdates: true)
            let capturedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            let name = (self.interfaceOrientation.isPortrait ? "Screenshot-Portrait" : "Screenshot-Landscape")
            let imagePath = "/Users/archagon/Documents/Programming/OSX/RussianPhoneticKeyboard/External/tasty-imitation-keyboard/\(name).png"
            
            if let pngRep = UIImagePNGRepresentation(capturedImage) {
                pngRep.writeToFile(imagePath, atomically: true)
            }
            
            self.view.backgroundColor = oldViewColor
        }
    }
}
func randomEmoji() -> String {
    let cats = "😂"
    
    let numCats = cats.characters.count
    let randomCat = arc4random() % UInt32(numCats)
    
    let index = cats.startIndex.advancedBy(Int(randomCat))
    let character = cats[index]
    
    return String(character)
}