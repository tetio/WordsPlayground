//
//  Words.swift
//  WordsPlayground
//
//  Created by Sergi Maymi on 30/11/20.
//

import Foundation

struct Words {
    let dictionary: [String: Bool]
    let dictionary5: [String: Bool]
    
    init() {
        let path = Bundle.main.path(forResource: "words_1000", ofType: "txt") // file path for file "data.txt"
        do {
            let string = try String(contentsOfFile: path!, encoding: String.Encoding.utf8)
            self.dictionary = Dictionary(string.split{$0 == "\n"}.map{(String($0), true)}) { _, last in last }
            print(dictionary.count)
            self.dictionary5 = dictionary.filter{$0.key.count == 5}
            print("Loaded")
        } catch {
            self.dictionary = [:]
            self.dictionary5 = [:]
            print("Failed to read file")
        }
    }
    
    
}
