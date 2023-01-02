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
    
    @State private var isCorrect:[Bool] = [false, false, false, false, false]
//    @State private var didTap2:Bool = false
//    @State private var didTap3:Bool = false
//    @State private var didTap4:Bool = false
//    @State private var didTap5:Bool = false
    @State private var didClick:Bool = false
    @State var wordArray = WordGetter()
    @State var numTry = 0
    
    @State var textField: String = ""
    @State var output: String  = ""
    

    var body: some View {
        
        VStack {
            HStack{
                
                TextField("", text: $rowOne.char0)
                    .background(didClick ? (isCorrect[0] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                
                TextField("", text: $rowOne.char1)
                    .background(didClick ? (isCorrect[1] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
//
                TextField("", text: $rowOne.char2)
                    .background(didClick ? (isCorrect[2] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
//
                TextField("", text: $rowOne.char3)
                    .background(didClick ? (isCorrect[3] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
//
                TextField("", text: $rowOne.char4)
                    .background(didClick ? (isCorrect[4] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                
                
            }
            
            HStack{
                
                TextField("", text: $rowTwo.char0)
                    .background(didClick ? (isCorrect[0] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                
                TextField("", text: $rowTwo.char1)
                    .background(didClick ? (isCorrect[1] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
//
                TextField("", text: $rowTwo.char2)
                    .background(didClick ? (isCorrect[2] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
//
                TextField("", text: $rowTwo.char3)
                    .background(didClick ? (isCorrect[3] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
//
                TextField("", text: $rowTwo.char4)
                    .background(didClick ? (isCorrect[4] ? Color.green: Color.red): Color.gray)
                    .multilineTextAlignment(.center)
                
                
            }
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/, action:  {
                output = ""
                
                numTry = numTry + 1
                
                //checking if all the text box have an input
                var allfill:Bool = true
                if(rowOne.char0.count + rowOne.char1.count + rowOne.char2.count + rowOne.char3.count + rowOne.char4.count != 5) {
                    allfill = false
                    output = "missing inputes"
                }

                //checking it they are correct or notco
                if(allfill){

                    
                    
                    didClick = true
                    isCorrect = [false, false, false, false, false]
                    let allCorrect = [true, true, true, true, true]
                    
                    if( wordArray.word[0] == Array(rowOne.char0)[0]) {
                        self.isCorrect[0] = true
                    }
                    
                    if( wordArray.word[1] == Array(rowOne.char1)[0]) {
                        self.isCorrect[1] = true
                    }
                    
                    if( wordArray.word[2] == Array(rowOne.char2)[0]) {
                        self.isCorrect[2] = true
                    }
                    
                    if( wordArray.word[3] == Array(rowOne.char3)[0]) {
                        self.isCorrect[3] = true
                    }
                    
                    if( wordArray.word[4] == Array(rowOne.char4)[0]) {
                        self.isCorrect[4] = true
                    }
                    
                    if(isCorrect.contains(allCorrect)) {
                        output = "correct"
                    }
                }
            })
            
            Text(output)
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
