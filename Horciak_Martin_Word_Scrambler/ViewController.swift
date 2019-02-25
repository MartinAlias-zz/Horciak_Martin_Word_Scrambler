//
//  ViewController.swift
//  Horciak_Martin_Word_Scrambler
//
//  Created by Martin Horciak on 2018-09-15.
//  Copyright © 2018 Martin Horciak. All rights reserved.
//

import UIKit

var saveData = UserDefaults.standard

class ViewController: UIViewController {
    
    //OUTLETS
    @IBOutlet weak var wordView: UITextView!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var giveUpButton: UIButton!
    
    @IBOutlet var Buttons: [UIButton]!
    
    @IBOutlet weak var incorrectWord: UITextView!
    @IBOutlet weak var winningMessage: UITextView!
    @IBOutlet weak var scoreMessage: UITextView!
    
    @IBOutlet weak var enterUserName: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    //VARIABLE DECLARATION
    var backButtonAfterWin = 0
    var chosenLevelWords: [wordStructure] = []
    var scoreCount = 0
    var guessedWord: String = ""
    var chosenWord: String = ""
    var letter0 = ""
    var letter1 = ""
    var letter2 = ""
    var letter3 = ""
    var letter4 = ""
    var letter5 = ""
    var letter6 = ""
    var letter7 = ""
    var letter8 = ""
    var letter9 = ""
 
    var button0Colour = 0
    var button1Colour = 0
    var button2Colour = 0
    var button3Colour = 0
    var button4Colour = 0
    var button5Colour = 0
    var button6Colour = 0
    var button7Colour = 0
    var button8Colour = 0
    var button9Colour = 0
    
    
    //As imagined this hides most buttons
    func hideAll () {
        for index in 0...9{
            Buttons[index].isHidden = true
        }
        checkButton.isHidden = true
        resetButton.isHidden = true
        giveUpButton.isHidden = true
        incorrectWord.isHidden = true
        wordView.isHidden = true
    }
    
    //As imagined this unhides most buttons
    func unHideAll () {
        for index in 0...9{
            Buttons[index].isHidden = false
        }
        checkButton.isHidden = false
        resetButton.isHidden = false
        giveUpButton.isHidden = false
        incorrectWord.isHidden = false
        wordView.isHidden = false
    }
    
    
    func setButtonColourBack () {
        button0Colour = 0
        button1Colour = 0
        button2Colour = 0
        button3Colour = 0
        button4Colour = 0
        button5Colour = 0
        button6Colour = 0
        button7Colour = 0
        button8Colour = 0
        button9Colour = 0
    }
   
    //THIS IS THE LAYOUTS FOR THE DIFFERENT LEVELS
    //The lower functions hide and unhide certain buttons and loop throught a for loop to change their colour backs and practically reset them dependant on the level
    func levelOneLayout () {
        for index in 0...9 {
            Buttons[index].backgroundColor = UIColor(red: 169.0/255.0, green: 85.0/255.0, blue: 225.0/255.0, alpha: 1.0)
            UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            Buttons[index].isUserInteractionEnabled = true
        }
        
        wordView.text = ""
        guessedWord = ""
        setButtonColourBack()
        incorrectWord.isHidden = true
        
        Buttons[0].isHidden = true
        Buttons[1].isHidden = false
        Buttons[2].isHidden = false
        Buttons[3].isHidden = false
        Buttons[4].isHidden = true
        Buttons[5].isHidden = true
        Buttons[6].isHidden = true
        Buttons[7].isHidden = true
        Buttons[8].isHidden = true
        Buttons[9].isHidden = true
    }
    
    func levelTwoLayout () {
        for index in 0...9 {
            Buttons[index].backgroundColor = UIColor(red: 169.0/255.0, green: 85.0/255.0, blue: 225.0/255.0, alpha: 1.0)
            UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            Buttons[index].isUserInteractionEnabled = true
        }
        
        wordView.text = ""
        guessedWord = ""
        setButtonColourBack()
        incorrectWord.isHidden = true
        
        Buttons[0].isHidden = true
        Buttons[1].isHidden = false
        Buttons[2].isHidden = false
        Buttons[3].isHidden = false
        Buttons[4].isHidden = true
        Buttons[5].isHidden = true
        Buttons[6].isHidden = true
        Buttons[7].isHidden = false
        Buttons[8].isHidden = true
        Buttons[9].isHidden = true
    }
    
    func levelThreeLayout () {
        for index in 0...9 {
            Buttons[index].backgroundColor = UIColor(red: 169.0/255.0, green: 85.0/255.0, blue: 225.0/255.0, alpha: 1.0)
            UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            Buttons[index].isUserInteractionEnabled = true
        }
        
        wordView.text = ""
        guessedWord = ""
        setButtonColourBack()
        incorrectWord.isHidden = true
        
        Buttons[0].isHidden = false
        Buttons[1].isHidden = false
        Buttons[2].isHidden = false
        Buttons[3].isHidden = false
        Buttons[4].isHidden = false
        Buttons[5].isHidden = true
        Buttons[6].isHidden = true
        Buttons[7].isHidden = true
        Buttons[8].isHidden = true
        Buttons[9].isHidden = true
    }
    
    func levelFourLayout () {
        for index in 0...9 {
            Buttons[index].backgroundColor = UIColor(red: 169.0/255.0, green: 85.0/255.0, blue: 225.0/255.0, alpha: 1.0)
            UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            Buttons[index].isUserInteractionEnabled = true
        }
        
        wordView.text = ""
        guessedWord = ""
        setButtonColourBack()
        incorrectWord.isHidden = true
        
        Buttons[0].isHidden = false
        Buttons[1].isHidden = false
        Buttons[2].isHidden = false
        Buttons[3].isHidden = false
        Buttons[4].isHidden = false
        Buttons[5].isHidden = true
        Buttons[6].isHidden = true
        Buttons[7].isHidden = false
        Buttons[8].isHidden = true
        Buttons[9].isHidden = true
    }
    
    func levelFiveLayout () {
        for index in 0...9 {
            Buttons[index].backgroundColor = UIColor(red: 169.0/255.0, green: 85.0/255.0, blue: 225.0/255.0, alpha: 1.0)
            UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            Buttons[index].isUserInteractionEnabled = true
        }
        
        wordView.text = ""
        guessedWord = ""
        setButtonColourBack()
        incorrectWord.isHidden = true
        
        Buttons[0].isHidden = false
        Buttons[1].isHidden = false
        Buttons[2].isHidden = false
        Buttons[3].isHidden = false
        Buttons[4].isHidden = false
        Buttons[5].isHidden = true
        Buttons[6].isHidden = false
        Buttons[7].isHidden = true
        Buttons[8].isHidden = false
        Buttons[9].isHidden = true
    }
    
    func levelSixLayout () {
        for index in 0...9 {
            Buttons[index].backgroundColor = UIColor(red: 169.0/255.0, green: 85.0/255.0, blue: 225.0/255.0, alpha: 1.0)
            UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            Buttons[index].isUserInteractionEnabled = true
        }
        
        wordView.text = ""
        guessedWord = ""
        setButtonColourBack()
        incorrectWord.isHidden = true
        
        Buttons[0].isHidden = false
        Buttons[1].isHidden = false
        Buttons[2].isHidden = false
        Buttons[3].isHidden = false
        Buttons[4].isHidden = false
        Buttons[5].isHidden = true
        Buttons[6].isHidden = false
        Buttons[7].isHidden = false
        Buttons[8].isHidden = false
        Buttons[9].isHidden = true
    }
    
    func levelSevenLayout () {
        for index in 0...9 {
            Buttons[index].backgroundColor = UIColor(red: 169.0/255.0, green: 85.0/255.0, blue: 225.0/255.0, alpha: 1.0)
            UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            Buttons[index].isUserInteractionEnabled = true
        }
        
        wordView.text = ""
        guessedWord = ""
        setButtonColourBack()
        incorrectWord.isHidden = true
        
        Buttons[0].isHidden = false
        Buttons[1].isHidden = false
        Buttons[2].isHidden = false
        Buttons[3].isHidden = false
        Buttons[4].isHidden = false
        Buttons[5].isHidden = false
        Buttons[6].isHidden = false
        Buttons[7].isHidden = true
        Buttons[8].isHidden = false
        Buttons[9].isHidden = false
    }
    
    struct wordStructure {
        let theWord: String
        var theCharacters: [String]
        let wordLength: Int
        let wordLevel: Int
    }
    
    //Below Structure instances are made that describe each word, the characters, the length and the level
    //All words in the level one category
    let word1 = wordStructure(theWord: "dog", theCharacters: ["d","o","g"], wordLength: 3, wordLevel: 1)
    let word2 = wordStructure(theWord: "cat", theCharacters: ["c","a","t"], wordLength: 3, wordLevel: 1)
    let word3 = wordStructure(theWord: "two", theCharacters: ["t","w","o"], wordLength: 3, wordLevel: 1)
    let word4 = wordStructure(theWord: "pit", theCharacters: ["p","i","t"], wordLength: 3, wordLevel: 1)
    let word5 = wordStructure(theWord: "sun", theCharacters: ["s","u","n"], wordLength: 3, wordLevel: 1)
    let word6 = wordStructure(theWord: "fun", theCharacters: ["f","u","n"], wordLength: 3, wordLevel: 1)
    let word7 = wordStructure(theWord: "let", theCharacters: ["l","e","t"], wordLength: 3, wordLevel: 1)
    let word8 = wordStructure(theWord: "toe", theCharacters: ["t","o","e"], wordLength: 3, wordLevel: 1)
    
    //All words in the level two category
    let word9 = wordStructure(theWord: "four", theCharacters: ["f","o","u","r"], wordLength: 4, wordLevel: 2)
    let word10 = wordStructure(theWord: "pear", theCharacters: ["p","e","a","r"], wordLength: 4, wordLevel: 2)
    let word11 = wordStructure(theWord: "book", theCharacters: ["b","o","o","k"], wordLength: 4, wordLevel: 2)
    let word12 = wordStructure(theWord: "plum", theCharacters: ["p","l","u","m"], wordLength: 4, wordLevel: 2)
    let word13 = wordStructure(theWord: "drag", theCharacters: ["d","r","a","g"], wordLength: 4, wordLevel: 2)
    let word14 = wordStructure(theWord: "turn", theCharacters: ["t","u","r","n"], wordLength: 4, wordLevel: 2)
    let word15 = wordStructure(theWord: "left", theCharacters: ["l","e","f","t"], wordLength: 4, wordLevel: 2)
    let word16 = wordStructure(theWord: "near", theCharacters: ["n","e","a","r"], wordLength: 4, wordLevel: 2)
    
    //All words in the level three category
    let word17 = wordStructure(theWord: "moose", theCharacters: ["m","o","o","s","e"], wordLength: 5, wordLevel: 3)
    let word18 = wordStructure(theWord: "fruit", theCharacters: ["f","r","u","i","t"], wordLength: 5, wordLevel: 3)
    let word19 = wordStructure(theWord: "break", theCharacters: ["b","r","e","a","k"], wordLength: 5, wordLevel: 3)
    let word20 = wordStructure(theWord: "tweet", theCharacters: ["t","w","e","e","t"], wordLength: 5, wordLevel: 3)
    let word21 = wordStructure(theWord: "camel", theCharacters: ["c","a","m","e","l"], wordLength: 5, wordLevel: 3)
    let word22 = wordStructure(theWord: "ankle", theCharacters: ["a","n","k","l","e"], wordLength: 5, wordLevel: 3)
    let word23 = wordStructure(theWord: "story", theCharacters: ["s","t","o","r","y"], wordLength: 5, wordLevel: 3)
    let word24 = wordStructure(theWord: "space", theCharacters: ["s","p","a","c","e"], wordLength: 5, wordLevel: 3)
    
    //All words in the level four category
    let word25 = wordStructure(theWord: "donkey", theCharacters: ["d","o","n","k","e","y"], wordLength: 6, wordLevel: 4)
    let word26 = wordStructure(theWord: "absorb", theCharacters: ["a","b","s","o","r","b"], wordLength: 6, wordLevel: 4)
    let word27 = wordStructure(theWord: "bruise", theCharacters: ["b","r","u","i","s","e"], wordLength: 6, wordLevel: 4)
    let word28 = wordStructure(theWord: "embark", theCharacters: ["e","m","b","a","r","k"], wordLength: 6, wordLevel: 4)
    let word29 = wordStructure(theWord: "plasma", theCharacters: ["p","l","a","s","m","a"], wordLength: 6, wordLevel: 4)
    let word30 = wordStructure(theWord: "settle", theCharacters: ["s","e","t","t","l","e"], wordLength: 6, wordLevel: 4)
    let word31 = wordStructure(theWord: "antler", theCharacters: ["a","n","t","l","e","r"], wordLength: 6, wordLevel: 4)
    let word32 = wordStructure(theWord: "switch", theCharacters: ["s","w","i","t","c","h"], wordLength: 6, wordLevel: 4)
    
    //All words in the level five category
    let word33 = wordStructure(theWord: "anxious", theCharacters: ["a","n","x","i","o","u","s"], wordLength: 7, wordLevel: 5)
    let word34 = wordStructure(theWord: "platipy", theCharacters: ["p","l","a","t","i","p","y"], wordLength: 7, wordLevel: 5)
    let word35 = wordStructure(theWord: "conjure", theCharacters: ["c","o","n","j","u","r","e"], wordLength: 7, wordLevel: 5)
    let word36 = wordStructure(theWord: "enslave", theCharacters: ["e","n","s","l","a","v","e"], wordLength: 7, wordLevel: 5)
    let word37 = wordStructure(theWord: "fragile", theCharacters: ["f","r","a","g","i","l","e"], wordLength: 7, wordLevel: 5)
    let word38 = wordStructure(theWord: "nurture", theCharacters: ["n","u","r","t","u","r","e"], wordLength: 7, wordLevel: 5)
    let word39 = wordStructure(theWord: "control", theCharacters: ["c","o","n","t","r","o","l"], wordLength: 7, wordLevel: 5)
    let word40 = wordStructure(theWord: "encoded", theCharacters: ["e","n","c","o","d","e","d"], wordLength: 7, wordLevel: 5)
    
    //All words in the level six category
    let word41 = wordStructure(theWord: "violence", theCharacters: ["v","i","o","l","e","n","c","e"], wordLength: 8, wordLevel: 6)
    let word42 = wordStructure(theWord: "ordinary", theCharacters: ["o","r","d","i","n","a","r","y"], wordLength: 8, wordLevel: 6)
    let word43 = wordStructure(theWord: "squirrel", theCharacters: ["s","q","u","i","r","r","e","l"], wordLength: 8, wordLevel: 6)
    let word44 = wordStructure(theWord: "flawless", theCharacters: ["f","l","a","w","l","e","s","s"], wordLength: 8, wordLevel: 6)
    let word45 = wordStructure(theWord: "eternity", theCharacters: ["e","t","e","r","n","i","t","y"], wordLength: 8, wordLevel: 6)
    let word46 = wordStructure(theWord: "progress", theCharacters: ["p","r","o","g","r","e","s","s"], wordLength: 8, wordLevel: 6)
    let word47 = wordStructure(theWord: "scramble", theCharacters: ["s","c","r","a","m","b","l","e"], wordLength: 8, wordLevel: 6)
    let word48 = wordStructure(theWord: "function", theCharacters: ["f","u","n","c","t","i","o","n"], wordLength: 8, wordLevel: 6)
    
    //All words in the level seven category
    let word49 = wordStructure(theWord: "maximized", theCharacters: ["m","a","x","i","m","i","z","e","d"], wordLength: 9, wordLevel: 7)
    let word50 = wordStructure(theWord: "paparazzi", theCharacters: ["p","a","p","a","r","a","z","z","i"], wordLength: 9, wordLevel: 7)
    let word51 = wordStructure(theWord: "raspberry", theCharacters: ["r","a","s","p","b","e","r","r","y"], wordLength: 9, wordLevel: 7)
    let word52 = wordStructure(theWord: "abnagates", theCharacters: ["a","b","n","a","g","a","t","e","s"], wordLength: 9, wordLevel: 7)
    let word53 = wordStructure(theWord: "cardinals", theCharacters: ["c","a","r","d","i","n","a","l","s"], wordLength: 9, wordLevel: 7)
    let word54 = wordStructure(theWord: "captivity", theCharacters: ["c","a","p","t","i","v","i","t","y"], wordLength: 9, wordLevel: 7)
    let word55 = wordStructure(theWord: "doubtless", theCharacters: ["d","o","u","b","t","l","e","s","s"], wordLength: 9, wordLevel: 7)
    let word56 = wordStructure(theWord: "immortals", theCharacters: ["i","m","m","o","r","t","a","l","s"], wordLength: 9, wordLevel: 7)
    
    
    //FUNCTIONS
    
    /*This function puts the above word structure instances into different levels and dependant on the level it appends 5 of the leveled words into another array (of structures) so that each level only has to consist of 5 random words*/
    func getWord() {
        var wordAmount = 8
        var randomNum: Int
        var level1Words: [wordStructure] = [word1,word2,word3,word4,word5,word6,word7,word8]
        var level2Words: [wordStructure] = [word9,word10,word11,word12,word13,word14,word15,word16]
        var level3Words: [wordStructure] = [word17,word18,word19,word20,word21,word22,word23,word24]
        var level4Words: [wordStructure] = [word25,word26,word27,word28,word29,word30,word31,word32]
        var level5Words: [wordStructure] = [word33,word34,word35,word36,word37,word38,word39,word40]
        var level6Words: [wordStructure] = [word41,word42,word43,word44,word45,word46,word47,word48]
        var level7Words: [wordStructure] = [word49,word50,word51,word52,word53,word54,word55,word56]
       
        if levelCount == 1 {
            levelOneLayout()
            for _ in 0..<5 {
                randomNum = Int.random(in: 0..<wordAmount)
                chosenWord = level1Words[randomNum].theWord
                chosenLevelWords.append(level1Words[randomNum])
                level1Words.remove(at: randomNum)
                wordAmount -= 1
            }
        }
        
        if levelCount == 2 {
            levelTwoLayout()
            for _ in 0..<5{
                randomNum = Int.random(in: 0..<wordAmount)
                chosenWord = level2Words[randomNum].theWord
                chosenLevelWords.append(level2Words[randomNum])
                level2Words.remove(at: randomNum)
                wordAmount -= 1
            }
        }
        
        if levelCount == 3 {
            levelThreeLayout()
            for _ in 0..<5{
                randomNum = Int.random(in: 0..<wordAmount)
                chosenWord = level3Words[randomNum].theWord
                chosenLevelWords.append(level3Words[randomNum])
                level3Words.remove(at: randomNum)
                wordAmount -= 1
            }
        }
        
        if levelCount == 4 {
            levelFourLayout()
            for _ in 0..<5{
                randomNum = Int.random(in: 0..<wordAmount)
                chosenWord = level4Words[randomNum].theWord
                chosenLevelWords.append(level4Words[randomNum])
                level4Words.remove(at: randomNum)
                wordAmount -= 1
            }
        }
        
        if levelCount == 5 {
            levelFiveLayout()
            for _ in 0..<5{
                randomNum = Int.random(in: 0..<wordAmount)
                chosenWord = level5Words[randomNum].theWord
                chosenLevelWords.append(level5Words[randomNum])
                level5Words.remove(at: randomNum)
                wordAmount -= 1
            }
        }
        
        if levelCount == 6 {
            levelSixLayout()
            for _ in 0..<5{
                randomNum = Int.random(in: 0..<wordAmount)
                chosenWord = level6Words[randomNum].theWord
                chosenLevelWords.append(level6Words[randomNum])
                level6Words.remove(at: randomNum)
                wordAmount -= 1
            }
        }
        
        if levelCount == 7 {
            levelSevenLayout()
            for _ in 0..<5{
                randomNum = Int.random(in: 0..<wordAmount)
                chosenWord = level7Words[randomNum].theWord
                chosenLevelWords.append(level7Words[randomNum])
                level7Words.remove(at: randomNum)
                wordAmount -= 1
            }
        }
    }
    
    
    
    /* this function is again dependant on the level count and it only goes through the dedicated if statement and changes the buttons text to the character from the word after shuffling them. Makes them uppercased and removes the word from the array after its been used*/
    func setLetters () {
        if chosenLevelWords.count > 0 {
           
            if levelCount == 1{
                for index in 1...3{
                    chosenLevelWords[0].theCharacters.shuffle()
                    Buttons[index].setTitle(chosenLevelWords[0].theCharacters[0].uppercased(), for: .normal)
                    print (chosenLevelWords[0].theCharacters[0].uppercased())
                    chosenLevelWords[0].theCharacters.remove(at: 0)
                    chosenWord = chosenLevelWords[0].theWord
                }
                chosenLevelWords.removeFirst()
            }
            
            if levelCount == 2{
                for index in 1...7{
                    if index == 1 || index == 2 || index == 3 || index == 7 {
                        chosenLevelWords[0].theCharacters.shuffle()
                        Buttons[index].setTitle(chosenLevelWords[0].theCharacters[0].uppercased(), for: .normal)
                        print (chosenLevelWords[0].theCharacters[0].uppercased())
                        chosenLevelWords[0].theCharacters.remove(at: 0)
                        chosenWord = chosenLevelWords[0].theWord
                    }
                }
                chosenLevelWords.removeFirst()
            }
            
            if levelCount == 3{
                for index in 0...4{
                    chosenLevelWords[0].theCharacters.shuffle()
                    Buttons[index].setTitle(chosenLevelWords[0].theCharacters[0].uppercased(), for: .normal)
                    print (chosenLevelWords[0].theCharacters[0].uppercased())
                    chosenLevelWords[0].theCharacters.remove(at: 0)
                    chosenWord = chosenLevelWords[0].theWord
                }
                chosenLevelWords.removeFirst()
            }
            
            if levelCount == 4{
                for index in 0...7 {
                    if index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 7 {
                        chosenLevelWords[0].theCharacters.shuffle()
                        Buttons[index].setTitle(chosenLevelWords[0].theCharacters[0].uppercased(), for: .normal)
                        print (chosenLevelWords[0].theCharacters[0].uppercased())
                        chosenLevelWords[0].theCharacters.remove(at: 0)
                        chosenWord = chosenLevelWords[0].theWord
                    }
                }
                chosenLevelWords.removeFirst()
            }
            
            if levelCount == 5{
                for index in 0...8{
                    if index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 6 || index == 8 {
                        chosenLevelWords[0].theCharacters.shuffle()
                        Buttons[index].setTitle(chosenLevelWords[0].theCharacters[0].uppercased(), for: .normal)
                        print (chosenLevelWords[0].theCharacters[0].uppercased())
                        chosenLevelWords[0].theCharacters.remove(at: 0)
                        chosenWord = chosenLevelWords[0].theWord
                    }
                }
                chosenLevelWords.removeFirst()
            }
            
            if levelCount == 6{
                for index in 0...8{
                    if index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 6 || index == 7 || index == 8 {
                        chosenLevelWords[0].theCharacters.shuffle()
                        Buttons[index].setTitle(chosenLevelWords[0].theCharacters[0].uppercased(), for: .normal)
                        print (chosenLevelWords[0].theCharacters[0].uppercased())
                        chosenLevelWords[0].theCharacters.remove(at: 0)
                        chosenWord = chosenLevelWords[0].theWord
                    }
                }
                chosenLevelWords.removeFirst()
            }
            
            if levelCount == 7{
                for index in 0...9 {
                    if index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 5 || index == 6 || index == 8 || index == 9 {
                        chosenLevelWords[0].theCharacters.shuffle()
                        Buttons[index].setTitle(chosenLevelWords[0].theCharacters[0].uppercased(), for: .normal)
                        print (chosenLevelWords[0].theCharacters[0].uppercased())
                        chosenLevelWords[0].theCharacters.remove(at: 0)
                        chosenWord = chosenLevelWords[0].theWord
                    }
                }
                chosenLevelWords.removeFirst()
            }
        }
            
    }
    
    /*This function also is dependant on the level count and it matches the guessed word with the actual word and if they are the same then it will move on to the next word and if 5 words have been completed in the level then it moves them to the next level. Once the game is completed it unhides all score and text messages or views and also allows you to type in a name to save it to the leader board*/
    
    func checktheWord () {
       
        if levelCount == 7 {
            if guessedWord == chosenWord.uppercased() {
                scoreCount += 1
                if scoreCount < 5 {
                    setLetters()
                    levelSevenLayout()
                    totalScore += 200
                } else {
                    print ("YOU WON")
                    enterUserName.isHidden = false
                    userNameTextField.isHidden = false
                    backButtonAfterWin = 1
                    winningMessage.isHidden = false
                    scoreMessage.text = "Your Score Is: \(totalScore)"
                    scoreMessage.isHidden = false
                    hideAll()
                    
                }
                
            } else {
                incorrectWord.isHidden = false
            }
        }
        
        if levelCount == 6 {
            if guessedWord == chosenWord.uppercased() {
                scoreCount += 1
                if scoreCount < 5 {
                    setLetters()
                    levelSixLayout()
                    totalScore += 200
                } else {
                    print ("Next Level")
                    levelCount = 7
                    scoreCount = 0
                    levelSevenLayout()
                    getWord()
                    setLetters()
                }
                
            } else {
                incorrectWord.isHidden = false
            }
        }
        
        if levelCount == 5 {
            if guessedWord == chosenWord.uppercased() {
                scoreCount += 1
                if scoreCount < 5 {
                    setLetters()
                    levelFiveLayout()
                    totalScore += 200
                } else {
                    print ("Next Level")
                    levelCount = 6
                    scoreCount = 0
                    levelSixLayout()
                    getWord()
                    setLetters()
                }
                
            } else {
                incorrectWord.isHidden = false
            }
        }
        
        if levelCount == 4 {
            if guessedWord == chosenWord.uppercased() {
                scoreCount += 1
                if scoreCount < 5 {
                    setLetters()
                    levelFourLayout()
                    totalScore += 200
                } else {
                    print ("Next Level")
                    levelCount = 5
                    scoreCount = 0
                    levelFiveLayout()
                    getWord()
                    setLetters()
                }
                
            } else {
                incorrectWord.isHidden = false
            }
        }
        
        if levelCount == 3 {
            if guessedWord == chosenWord.uppercased() {
                scoreCount += 1
                if scoreCount < 5 {
                    setLetters()
                    levelThreeLayout()
                    totalScore += 200
                } else {
                    print ("Next Level")
                    levelCount = 4
                    scoreCount = 0
                    levelFourLayout()
                    getWord()
                    setLetters()
                }
                
            } else {
                incorrectWord.isHidden = false
            }
        }
        
        if levelCount == 2 {
            if guessedWord == chosenWord.uppercased() {
                scoreCount += 1
                if scoreCount < 5 {
                    setLetters()
                    levelTwoLayout()
                    totalScore += 200
                } else {
                    print ("Next Level")
                    levelCount = 3
                    scoreCount = 0
                    levelThreeLayout()
                    getWord()
                    setLetters()
                }
                
            } else {
                incorrectWord.isHidden = false
            }
        }
        
        if levelCount == 1 {
            if guessedWord == chosenWord.uppercased() {
                scoreCount += 1
                if scoreCount < 5 {
                    setLetters()
                    levelOneLayout()
                    totalScore += 200
                } else {
                    print ("Next Level")
                    levelCount = 2
                    scoreCount = 0
                    levelTwoLayout()
                    getWord()
                    setLetters()
                }
                
            } else {
                incorrectWord.isHidden = false
            }
        }
    }
    
    // this Function is what determines what level the player is on so it uses the case of the level and sets up the buttons and resets the text view and also takes 10 of the score
    func resetLetters () {
        switch levelCount {
        case 1:
            levelOneLayout()
            incorrectWord.isHidden = true
            totalScore -= 10
            for index in 0...9 {
                UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            }
        case 2:
            levelTwoLayout()
            incorrectWord.isHidden = true
            totalScore -= 10
            for index in 0...9 {
                UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            }
        case 3:
            levelThreeLayout()
            incorrectWord.isHidden = true
            totalScore -= 10
            for index in 0...9 {
                UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            }
        case 4:
            levelFourLayout()
            incorrectWord.isHidden = true
            totalScore -= 10
            for index in 0...9 {
                UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            }
        case 5:
            levelFiveLayout()
            incorrectWord.isHidden = true
            totalScore -= 10
            for index in 0...9 {
                UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            }
        case 6:
            levelSixLayout()
            incorrectWord.isHidden = true
            totalScore -= 10
            for index in 0...9 {
                UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            }
        case 7:
            levelSevenLayout()
            incorrectWord.isHidden = true
            totalScore -= 10
            for index in 0...9 {
                UIView.transition(with: Buttons[index], duration: 0.3, options: .transitionFlipFromRight, animations: nil,completion: nil)
            }
        default:
            setButtonColourBack()
            incorrectWord.isHidden = true
        }
    }
    
    //Disables the buttons and makes them gray
    func disableButtons () {
        Buttons[0].backgroundColor = UIColor.lightGray
        Buttons[0].isUserInteractionEnabled = false
        Buttons[1].backgroundColor = UIColor.lightGray
        Buttons[1].isUserInteractionEnabled = false
        Buttons[2].backgroundColor = UIColor.lightGray
        Buttons[2].isUserInteractionEnabled = false
        Buttons[3].backgroundColor = UIColor.lightGray
        Buttons[3].isUserInteractionEnabled = false
        Buttons[4].backgroundColor = UIColor.lightGray
        Buttons[4].isUserInteractionEnabled = false
        Buttons[5].backgroundColor = UIColor.lightGray
        Buttons[5].isUserInteractionEnabled = false
        Buttons[6].backgroundColor = UIColor.lightGray
        Buttons[6].isUserInteractionEnabled = false
        Buttons[7].backgroundColor = UIColor.lightGray
        Buttons[7].isUserInteractionEnabled = false
        Buttons[8].backgroundColor = UIColor.lightGray
        Buttons[8].isUserInteractionEnabled = false
        Buttons[9].backgroundColor = UIColor.lightGray
        Buttons[9].isUserInteractionEnabled = false
    }
    
    //fills in the wordview with the proper word and disables the buttons except check so you can move on
    func fillInWord () {
        wordView.text = chosenWord.uppercased()
        guessedWord = chosenWord.uppercased()
        disableButtons()
    }
    
    // ON UIVIEW STARTUP
    override func viewDidLoad() {
        super.viewDidLoad()
        getWord()
        setLetters()
        setButtonColourBack()
        wordView.isUserInteractionEnabled = false
        winningMessage.isUserInteractionEnabled = false
        incorrectWord.isUserInteractionEnabled = false
        scoreMessage.isUserInteractionEnabled = false
    }
    
    //Hides keyboard when the user touches outside the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    //Hides keyboard when the user presses the return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.resignFirstResponder()
        return (true)
    }
    
    //BUTTTON ACTIONS
    @IBAction func checkPressed(_ sender: Any) {
        checktheWord()
        resetButton.isUserInteractionEnabled = true
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        resetLetters()
    }
    
    @IBAction func giveUpPressed(_ sender: Any) {
        fillInWord()
        resetButton.isUserInteractionEnabled = false
        totalScore -= 50
    }
    
    
    /*For all below buttons the actions are the same, change colour when pressed to gray if they are purple and add
    the buttons title name to the guessed word that is displayed in the wordView*/
    @IBAction func button0Pressed(_ sender: Any) {
        guard button0Colour == 1 else {
            Buttons[0].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[0], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button0Colour = 1
            
            letter0 = Buttons[0].currentTitle!
            guessedWord = guessedWord + letter0
            wordView.text = guessedWord
            Buttons[0].isUserInteractionEnabled = false
            return
        }
    }
    
    @IBAction func button1Pressed(_ sender: Any) {
        guard button1Colour == 1 else {
            Buttons[1].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[1], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button1Colour = 1
            
            letter1 = Buttons[1].currentTitle!
            guessedWord = guessedWord + letter1
            wordView.text = guessedWord
            Buttons[1].isUserInteractionEnabled = false
            return
        }
        
    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        guard button2Colour == 1 else {
            Buttons[2].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[2], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button2Colour = 1
            
            letter2 = Buttons[2].currentTitle!
            guessedWord = guessedWord + letter2
            wordView.text = guessedWord
            Buttons[2].isUserInteractionEnabled = false
            return
        }
        
    }
    
    @IBAction func button3Pressed(_ sender: Any) {
        guard button3Colour == 1 else {
            Buttons[3].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[3], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button3Colour = 1
            
            letter3 = Buttons[3].currentTitle!
            guessedWord = guessedWord + letter3
            wordView.text = guessedWord
            Buttons[3].isUserInteractionEnabled = false
            return
        }
        
    }
    
    @IBAction func button4Pressed(_ sender: Any) {
        guard button4Colour == 1 else {
            Buttons[4].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[4], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button4Colour = 1
            
            letter4 = Buttons[4].currentTitle!
            guessedWord = guessedWord + letter4
            wordView.text = guessedWord
            Buttons[4].isUserInteractionEnabled = false
            return
        }
    }
    
    @IBAction func button5Pressed(_ sender: Any) {
        guard button5Colour == 1 else {
            Buttons[5].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[5], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button5Colour = 1
            
            letter5 = Buttons[5].currentTitle!
            guessedWord = guessedWord + letter5
            wordView.text = guessedWord
            Buttons[5].isUserInteractionEnabled = false
            return
        }
    }
    
    @IBAction func button6Pressed(_ sender: Any) {
        guard button6Colour == 1 else {
            Buttons[6].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[6], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button6Colour = 1
            
            letter6 = Buttons[6].currentTitle!
            guessedWord = guessedWord + letter6
            wordView.text = guessedWord
            Buttons[6].isUserInteractionEnabled = false
            return
        }
    }
    
    @IBAction func button7Pressed(_ sender: Any) {
        guard button7Colour == 1 else {
            Buttons[7].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[7], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button7Colour = 1
            
            letter7 = Buttons[7].currentTitle!
            guessedWord = guessedWord + letter7
            wordView.text = guessedWord
            Buttons[7].isUserInteractionEnabled = false
            return
        }
    }
    
    @IBAction func button8Pressed(_ sender: Any) {
        guard button8Colour == 1 else {
            Buttons[8].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[8], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button8Colour = 1
            
            letter8 = Buttons[8].currentTitle!
            guessedWord = guessedWord + letter8
            wordView.text = guessedWord
            Buttons[8].isUserInteractionEnabled = false
            return
        }
    }
    
    @IBAction func button9Pressed(_ sender: Any) {
        guard button9Colour == 1 else {
            Buttons[9].backgroundColor = UIColor.lightGray
            UIView.transition(with: Buttons[9], duration: 0.3, options: .transitionFlipFromLeft, animations: nil,completion: nil)
            button9Colour = 1
            
            letter9 = Buttons[9].currentTitle!
            guessedWord = guessedWord + letter9
            wordView.text = guessedWord
            Buttons[9].isUserInteractionEnabled = false
            return
        }
    }
    
    
    /* Back button that only works to go back if you have filled out a name but also works if they have yet to finish the
 game and want to back out early*/
    @IBAction func backButtonPressed(_ sender: Any) {
        if backButtonAfterWin == 1 && userNameTextField.text == "" {
            let alert = UIAlertController(title: "Empty UserName", message: "Enter a UserName", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if backButtonAfterWin == 1{
            name = userNameTextField.text!
            performSegue(withIdentifier: "toMain", sender: nil)
        }else if backButtonAfterWin == 0 {
            performSegue(withIdentifier: "toMain", sender: nil)
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

