//
//  ContentView.swift
//  Wordle
//
//  Created by Rich Boundji on 12/31/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var rowOne = TextBindingManager(limit: 1)
    @ObservedObject var rowTwo = TextBindingManager(limit: 1)
    @ObservedObject var rowThree = TextBindingManager(limit: 1)
    @ObservedObject var rowFour = TextBindingManager(limit: 1)
    @ObservedObject var rowFive = TextBindingManager(limit: 1)
    
    @State private var isCorrectRowOne:[Bool] = [false, false, false, false, false]
    @State private var isCorrectRowTwo:[Bool] = [false, false, false, false, false]
    @State private var isCorrectRowThree:[Bool] = [false, false, false, false, false]
    @State private var isCorrectRowFour:[Bool] = [false, false, false, false, false]
    @State private var isCorrectRowFive:[Bool] = [false, false, false, false, false]
    @State private var allCorrect = [true, true, true, true, true]
    
    @State private var didClick:[Bool] = [false, false, false, false, false]
    
    @State var wordArray = WordGetter()
    @State var numTry = 0
    
    @State var textField: String = ""
    @State var output: String  = ""
    
    var body: some View {
        
        VStack {
            Text("\"" + wordArray.Definition + "\"")
                .padding()
            HStack{
                TextField("", text: $rowOne.char0)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[0] ? (isCorrectRowOne[0] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
//                    .overlay(
//                            RoundedRectangle(cornerRadius: 20)
//                                .stroke(Color.green, lineWidth: 2)
//                        )
                
                TextField("", text: $rowOne.char1)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[0]  ? (isCorrectRowOne[1] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
                
                TextField("", text: $rowOne.char2)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[0]  ? (isCorrectRowOne[2] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
                
                TextField("", text: $rowOne.char3)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[0]  ? (isCorrectRowOne[3] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
                
                TextField("", text: $rowOne.char4)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[0]  ? (isCorrectRowOne[4] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowTwo.char0)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[1]  ? (isCorrectRowTwo[0] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                
                TextField("", text: $rowTwo.char1)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[1] ? (isCorrectRowTwo[1] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                
                TextField("", text: $rowTwo.char2)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[1] ? (isCorrectRowTwo[2] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                
                TextField("", text: $rowTwo.char3)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[1] ? (isCorrectRowTwo[3] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                
                TextField("", text: $rowTwo.char4)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[1] ? (isCorrectRowTwo[4] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowThree.char0)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[2] ? (isCorrectRowThree[0] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                
                TextField("", text: $rowThree.char1)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[2]  ? (isCorrectRowThree[1] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                
                TextField("", text: $rowThree.char2)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[2]  ? (isCorrectRowThree[2] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                
                TextField("", text: $rowThree.char3)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[2]  ? (isCorrectRowThree[3] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                
                TextField("", text: $rowThree.char4)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[2]  ? (isCorrectRowThree[4] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowFour.char0)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[3]  ? (isCorrectRowFour[0] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char1)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[3] ? (isCorrectRowFour[1] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char2)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[3] ? (isCorrectRowFour[2] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char3)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[3] ? (isCorrectRowFour[3] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char4)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[3] ? (isCorrectRowFour[4] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowFive.char0)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[4] ? (isCorrectRowFive[0] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char1)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[4] ? (isCorrectRowFive[1] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char2)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[4] ? (isCorrectRowFive[2] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char3)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[4] ? (isCorrectRowFive[3] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char4)
                    .frame(width: 66.0, height: 66.0)
                    .background(didClick[4] ? (isCorrectRowFive[4] ? Color.green: Color.red): Color.gray)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
            }
            
            Button("Button", action:  {
                output = ""
                
                if(numTry == 0){
                    let outcome = checking(word: wordArray, inputes: rowOne, isCorrect: isCorrectRowOne)
                    if(outcome.allfill()) {
                        numTry = numTry + 1
                        didClick[0] = true
                        isCorrectRowOne = outcome.verify()
                        if(isCorrectRowOne.contains(allCorrect)) {
                            output = "correct"
                        }
                    } else {
                        output = "missing inputes"
                    }
                    
                } else if (numTry == 1){
                    let outcome = checking(word: wordArray, inputes: rowTwo, isCorrect: isCorrectRowTwo)
                    if(outcome.allfill()) {
                        numTry = numTry + 1
                        didClick[1] = true
                        isCorrectRowTwo = outcome.verify()
                        if(isCorrectRowTwo.contains(allCorrect)) {
                            output = "correct"
                        }
                    } else {
                        output = "missing inputes"
                    }
                    
                } else if (numTry == 2){
                    let outcome = checking(word: wordArray, inputes: rowThree, isCorrect: isCorrectRowThree)
                    if(outcome.allfill()) {
                        numTry = numTry + 1
                        didClick[2] = true
                        isCorrectRowThree = outcome.verify()
                        if(isCorrectRowThree.contains(allCorrect)) {
                            output = "correct"
                        }
                    } else {
                        output = "missing inputes"
                    }
                } else if (numTry == 3){
                    let outcome = checking(word: wordArray, inputes: rowFour, isCorrect: isCorrectRowFour)
                    if(outcome.allfill()) {
                        numTry = numTry + 1
                        didClick[3] = true
                        isCorrectRowFour = outcome.verify()
                        if(isCorrectRowFour.contains(allCorrect)) {
                            output = "correct"
                        }
                    } else {
                        output = "missing inputes"
                    }
                    
                } else if (numTry == 4){
                    let outcome = checking(word: wordArray, inputes: rowFive, isCorrect: isCorrectRowFive)
                    if(outcome.allfill()) {
                        numTry = numTry + 1
                        didClick[4] = true
                        isCorrectRowFive = outcome.verify()
                        if(isCorrectRowFive.contains(allCorrect)) {
                            output = "correct"
                        }
                    } else {
                        output = "missing inputes"
                    }
                }
                
                
            })
            
            Text(output)
            Text(String(numTry))
            
        }
        .padding()
        .background(
            Image("background")
        )
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
