//
//  checking.swift
//  Wordle
//
//  Created by Rich Boundji on 1/3/23.
//

import Foundation
import SwiftUI

class checking {
    var wordArray: Array<Character>
    var userInpute: TextBindingManager
    var correct: [Bool]
    
    
    init(word: WordGetter, inputes: TextBindingManager, isCorrect: [Bool] ) {
        wordArray = Array(word.getWord())
        userInpute = inputes
        correct = isCorrect
        print("checkin")
        print(wordArray)
    }
    
    func allfill() -> Bool {
        if(userInpute.char0.count + userInpute.char1.count + userInpute.char2.count + userInpute.char3.count + userInpute.char4.count != 5) {
            return false
        } 
        return true
    }
    func verify() -> [Bool] {
        
        if( wordArray[0].uppercased() == Array(arrayLiteral: userInpute.char0)[0]) {
            self.correct[0] = true
        }
        if( wordArray[1].uppercased() == Array(arrayLiteral: userInpute.char1)[0]) {
            self.correct[1] = true
        }
        if( wordArray[2].uppercased() == Array(arrayLiteral: userInpute.char2)[0]) {
            self.correct[2] = true
        }
        if( wordArray[3].uppercased() == Array(arrayLiteral: userInpute.char3)[0]) {
            self.correct[3] = true
        }
        if( wordArray[4].uppercased() == Array(arrayLiteral: userInpute.char4)[0]) {
            self.correct[4] = true
        }
        
        return correct
    }
}
