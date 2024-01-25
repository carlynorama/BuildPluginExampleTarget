// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser

@main
struct DemoFruitStore: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "For Testing The Plugins", 
        version: "0.0.0", 
        subcommands: [hello.self, fruit_list.self], 
        defaultSubcommand: hello.self)
    
    struct hello: ParsableCommand {
    mutating func run() throws {
        print("Hello, \(apple)!")
        print("Hello, \(citrus)!")
        print("Hello, \(banana)!")
    }
    }
}
