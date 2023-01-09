//
//  WordGetter.swift
//  Wordle
//
//  Created by Rich Boundji on 1/3/23.
//

import Foundation

class WordGetter {
    var finalVal:String = ""
    var Definition = "HELLO"
    
    init() {
        getRandomWord()
    }
    
    func getRandomWord(){
        let url = URL(string: "https://random-word-api.herokuapp.com/word?length=5")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil && data != nil {
                if let textFile = String(data: data!, encoding: .utf8) {
                    let temp = String(String(textFile).dropFirst(2).dropLast(2))
                    DispatchQueue.main.async {
                        self.finalVal = temp
                    }
                }
            }
        }
        task.resume()
    }
    
    func getRandomWordDefinition(word: String){
//        print("in method")
        
//        let url = URL(string: "https://api.dictionaryapi.dev/api/v2/entries/en/"+word)!
//        print(url)
        let url = URL(string: "https://api.dictionaryapi.dev/api/v2/entries/en/hello")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
           
            do {
                // make sure this JSON is in the format we expect
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? Array<Any> {
                    // try to read out a string array
                    if let names = json[0] as? [String: AnyObject]{
                        if let person = json["word"] as? [String: AnyObject] {
                            print("got it1")
                            print(person)
                        }
                        
                        print("got it")
                        print(names)
                    }
                }
            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
            }
                
        }
        task.resume()
    }
    
    func getWord() -> String {
//        print("getting word")
//        print(finalVal)
        
        if(finalVal.count != 0){
            getRandomWordDefinition(word: finalVal)
        }
        return self.finalVal
    }
    
    
}
