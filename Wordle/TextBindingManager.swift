//
//  TextBindingManager.swift
//  Wordle
//
//  Created by Rich Boundji on 1/1/23.
//

import Foundation

class TextBindingManager: ObservableObject {
    
    @Published var char0 = "" {
        didSet {
            if char0.count > characterLimit && oldValue.count <= characterLimit {
                char0 = oldValue
            }
        }
    }
    
    @Published var char1 = "" {
        didSet {
            if char1.count > characterLimit && oldValue.count <= characterLimit {
                char1 = oldValue
            }
        }
    }
    
    @Published var char2 = "" {
        didSet {
            if char2.count > characterLimit && oldValue.count <= characterLimit {
                char2 = oldValue
            }
        }
    }
    
    @Published var char3 = "" {
        didSet {
            if char3.count > characterLimit && oldValue.count <= characterLimit {
                char3 = oldValue
            }
        }
    }
    @Published var editable :Bool = true
    @Published var char4 = "" {
        didSet {
            if(editable){
                if char4.count > characterLimit && oldValue.count <= characterLimit {
                    char4 = oldValue
                }
            }
            
        }
    }
    
    
    let characterLimit: Int

    init(limit: Int = 5){
        characterLimit = limit
    }
}

class WordGetter {
    @Published var word = Array("HELLO")
}
