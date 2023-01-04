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
    
    @State private var didClickRowOne:Bool = false
    @State private var didClickRowTwo:Bool = false
    @State private var didClickRowThree:Bool = false
    @State private var didClickRowFour:Bool = false
    @State private var didClickRowFive:Bool = false
    
    @State var wordArray = WordGetter()
    @State var numTry = 0
    
    @State var textField: String = ""
    @State var output: String  = ""
    
    var body: some View {
        VStack {
            HStack{
                
                TextField("", text: $rowOne.char0)
                    .background(didClickRowOne ? (isCorrectRowOne[0] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
                
                TextField("", text: $rowOne.char1)
                    .background(didClickRowOne ? (isCorrectRowOne[1] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
                TextField("", text: $rowOne.char2)
                    .background(didClickRowOne ? (isCorrectRowOne[2] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
                TextField("", text: $rowOne.char3)
                    .background(didClickRowOne ? (isCorrectRowOne[3] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
                TextField("", text: $rowOne.char4)
                    .background(didClickRowOne ? (isCorrectRowOne[4] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 0 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowTwo.char0)
                    .background(didClickRowTwo ? (isCorrectRowTwo[0] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                TextField("", text: $rowTwo.char1)
                    .background(didClickRowTwo ? (isCorrectRowTwo[1] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                TextField("", text: $rowTwo.char2)
                    .background(didClickRowTwo ? (isCorrectRowTwo[2] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                TextField("", text: $rowTwo.char3)
                    .background(didClickRowTwo ? (isCorrectRowTwo[3] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
                TextField("", text: $rowTwo.char4)
                    .background(didClickRowTwo ? (isCorrectRowTwo[4] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 1 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowThree.char0)
                    .background(didClickRowThree ? (isCorrectRowThree[0] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                TextField("", text: $rowThree.char1)
                    .background(didClickRowThree ? (isCorrectRowThree[1] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                TextField("", text: $rowThree.char2)
                    .background(didClickRowThree ? (isCorrectRowThree[2] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                TextField("", text: $rowThree.char3)
                    .background(didClickRowThree ? (isCorrectRowThree[3] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
                TextField("", text: $rowThree.char4)
                    .background(didClickRowThree ? (isCorrectRowThree[4] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 2 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowFour.char0)
                    .background(didClickRowFour ? (isCorrectRowFour[0] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char1)
                    .background(didClickRowFour ? (isCorrectRowFour[1] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char2)
                    .background(didClickRowFour ? (isCorrectRowFour[2] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char3)
                    .background(didClickRowFour ? (isCorrectRowFour[3] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
                
                TextField("", text: $rowFour.char4)
                    .background(didClickRowFour ? (isCorrectRowFour[4] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 3 ? true: false)
            }
            
            HStack{
                TextField("", text: $rowFive.char0)
                    .background(didClickRowFive ? (isCorrectRowFive[0] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char1)
                    .background(didClickRowFive ? (isCorrectRowFive[1] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char2)
                    .background(didClickRowFive ? (isCorrectRowFive[2] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char3)
                    .background(didClickRowFive ? (isCorrectRowFive[3] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
                
                TextField("", text: $rowFive.char4)
                    .background(didClickRowFive ? (isCorrectRowFive[4] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                    .disabled(numTry != 4 ? true: false)
            }
            
            Button("Button", action:  {
                output = ""
                
                if(numTry == 0){
                    //checking if all the text box have an input
                    var allfill:Bool = true
                    if(rowOne.char0.count + rowOne.char1.count + rowOne.char2.count + rowOne.char3.count + rowOne.char4.count != 5) {
                        allfill = false
                        output = "missing inputes"
                    }
                    //checking it they are correct or notco
                    if(allfill){
                        numTry = numTry + 1
                        didClickRowOne = true
                        isCorrectRowOne = [false, false, false, false, false]
                        
                        if( wordArray.word[0] == Array(rowOne.char0)[0]) {
                            self.isCorrectRowOne[0] = true
                        }
                        if( wordArray.word[1] == Array(rowOne.char1)[0]) {
                            self.isCorrectRowOne[1] = true
                        }
                        if( wordArray.word[2] == Array(rowOne.char2)[0]) {
                            self.isCorrectRowOne[2] = true
                        }
                        if( wordArray.word[3] == Array(rowOne.char3)[0]) {
                            self.isCorrectRowOne[3] = true
                        }
                        if( wordArray.word[4] == Array(rowOne.char4)[0]) {
                            self.isCorrectRowOne[4] = true
                        }
                        if(isCorrectRowOne.contains(allCorrect)) {
                            output = "correct"
                        }
                    }
                } else if (numTry == 1){
                    //checking if all the text box have an input
                    var allfill:Bool = true
                    if(rowTwo.char0.count + rowTwo.char1.count + rowTwo.char2.count + rowTwo.char3.count + rowTwo.char4.count != 5) {
                        allfill = false
                        output = "missing inputes"
                    }
                    //checking it they are correct or notco
                    if(allfill){
                        numTry = numTry + 1
                        didClickRowTwo = true
                        isCorrectRowTwo = [false, false, false, false, false]
                        
                        if( wordArray.word[0] == Array(rowTwo.char0)[0]) {
                            self.isCorrectRowTwo[0] = true
                        }
                        
                        if( wordArray.word[1] == Array(rowTwo.char1)[0]) {
                            self.isCorrectRowTwo[1] = true
                        }
                        
                        if( wordArray.word[2] == Array(rowTwo.char2)[0]) {
                            self.isCorrectRowTwo[2] = true
                        }
                        
                        if( wordArray.word[3] == Array(rowTwo.char3)[0]) {
                            self.isCorrectRowTwo[3] = true
                        }
                        
                        if( wordArray.word[4] == Array(rowTwo.char4)[0]) {
                            self.isCorrectRowTwo[4] = true
                        }
                        
                        if(isCorrectRowTwo.contains(allCorrect)) {
                            output = "correct"
                        }
                    }
                } else if (numTry == 2){
                    //checking if all the text box have an input
                    var allfill:Bool = true
                    if(rowThree.char0.count + rowThree.char1.count + rowThree.char2.count + rowThree.char3.count + rowThree.char4.count != 5) {
                        allfill = false
                        output = "missing inputes"
                    }
                    //checking it they are correct or notco
                    if(allfill){
                        numTry = numTry + 1
                        didClickRowThree = true
                        isCorrectRowThree = [false, false, false, false, false]
                        
                        if( wordArray.word[0] == Array(rowThree.char0)[0]) {
                            self.isCorrectRowThree[0] = true
                        }
                        
                        if( wordArray.word[1] == Array(rowThree.char1)[0]) {
                            self.isCorrectRowThree[1] = true
                        }
                        
                        if( wordArray.word[2] == Array(rowThree.char2)[0]) {
                            self.isCorrectRowThree[2] = true
                        }
                        
                        if( wordArray.word[3] == Array(rowThree.char3)[0]) {
                            self.isCorrectRowThree[3] = true
                        }
                        
                        if( wordArray.word[4] == Array(rowThree.char4)[0]) {
                            self.isCorrectRowThree[4] = true
                        }
                        
                        if(isCorrectRowThree.contains(allCorrect)) {
                            output = "correct"
                        }
                    }
                } else if (numTry == 3){
                    //checking if all the text box have an input
                    var allfill:Bool = true
                    if(rowFour.char0.count + rowFour.char1.count + rowFour.char2.count + rowFour.char3.count + rowFour.char4.count != 5) {
                        allfill = false
                        output = "missing inputes"
                    }
                    //checking it they are correct or notco
                    if(allfill){
                        numTry = numTry + 1
                        didClickRowFour = true
                        isCorrectRowFour = [false, false, false, false, false]
                        
                        if( wordArray.word[0] == Array(rowFour.char0)[0]) {
                            self.isCorrectRowFour[0] = true
                        }
                        
                        if( wordArray.word[1] == Array(rowFour.char1)[0]) {
                            self.isCorrectRowFour[1] = true
                        }
                        
                        if( wordArray.word[2] == Array(rowFour.char2)[0]) {
                            self.isCorrectRowFour[2] = true
                        }
                        
                        if( wordArray.word[3] == Array(rowFour.char3)[0]) {
                            self.isCorrectRowFour[3] = true
                        }
                        
                        if( wordArray.word[4] == Array(rowFour.char4)[0]) {
                            self.isCorrectRowFour[4] = true
                        }
                        
                        if(isCorrectRowFour.contains(allCorrect)) {
                            output = "correct"
                        }
                    }
                } else if (numTry == 4){
                    //checking if all the text box have an input
                    var allfill:Bool = true
                    if(rowFive.char0.count + rowFive.char1.count + rowFive.char2.count + rowFive.char3.count + rowFive.char4.count != 5) {
                        allfill = false
                        output = "missing inputes"
                    }
                    //checking it they are correct or notco
                    if(allfill){
                        numTry = numTry + 1
                        didClickRowFive = true
                        isCorrectRowFive = [false, false, false, false, false]
                        
                        if( wordArray.word[0] == Array(rowFive.char0)[0]) {
                            self.isCorrectRowFive[0] = true
                        }
                        
                        if( wordArray.word[1] == Array(rowFive.char1)[0]) {
                            self.isCorrectRowFive[1] = true
                        }
                        
                        if( wordArray.word[2] == Array(rowFive.char2)[0]) {
                            self.isCorrectRowFive[2] = true
                        }
                        
                        if( wordArray.word[3] == Array(rowFive.char3)[0]) {
                            self.isCorrectRowFive[3] = true
                        }
                        
                        if( wordArray.word[4] == Array(rowFive.char4)[0]) {
                            self.isCorrectRowFive[4] = true
                        }
                        
                        if(isCorrectRowFive.contains(allCorrect)) {
                            output = "correct"
                        }
                    }
                }
                
                
            })
            
            Text(output)
            Text(String(numTry))
//            let test = "Hello USA 🇺🇸!!! Hello Brazil 🇧🇷!!!"
//            var aaa = Array(test)
            
//            Text( String( wordArray.word[1] ))
//            if(boxTwo.text.count > 0) {
//                Text( String( Array(boxTwo.text)[0] ))
//            }
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
