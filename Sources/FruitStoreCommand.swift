//
//  FruitStoreCommand.swift.swift
//
//
//  Created by Carlyn Maw on 1/17/24.
//
// This file refers to code generated by MyInBuildPlugin from
// files in Data folder. Please see Data/README.md for more information.


import ArgumentParser

protocol Fruit {
    var name:String {get}
}

var FruitStore:Dictionary<String,[any Fruit]> = [:]

extension DemoFruitStore {
    struct fruit_list: ParsableCommand {
        @Argument var fruitType:String?
        
        mutating func run() throws {
            addCitrus()
            
            if let fruitType {
                if let  fruitList = FruitStore[fruitType] {
                    print("We have \(fruitList.count) \(fruitType)(s).")
                    fruitList.forEach({print("- \($0.name)")})
                } else {
                 print("No fruit of type \(fruitType) in the FruitStore.")
                }
            } else {
                print("full fruit store")
                print("\(FruitStore)")
            }
        }
    }
}
