//
//  checking.swift
//  Wordle
//
//  Created by Rich Boundji on 1/3/23.
//

import Foundation
import SwiftUI

class checking {
    var wordArray: WordGetter
    var userInpute: TextBindingManager
    var correct: [Bool]
    
    
    init(word: WordGetter, inputes: TextBindingManager, isCorrect: [Bool] ) {
        wordArray = word
        userInpute = inputes
        correct = isCorrect
    }
    
    func allfill() -> Bool {
        if(userInpute.char0.count + userInpute.char1.count + userInpute.char2.count + userInpute.char3.count + userInpute.char4.count != 5) {
            return false
        } 
        return true
    }
    func verify() -> [Bool] {
        
        if( wordArray.word[0] == Array(userInpute.char0)[0]) {
            self.correct[0] = true
        }
        if( wordArray.word[1] == Array(userInpute.char1)[0]) {
            self.correct[1] = true
        }
        if( wordArray.word[2] == Array(userInpute.char2)[0]) {
            self.correct[2] = true
        }
        if( wordArray.word[3] == Array(userInpute.char3)[0]) {
            self.correct[3] = true
        }
        if( wordArray.word[4] == Array(userInpute.char4)[0]) {
            self.correct[4] = true
        }
        
        return correct
    }
}
