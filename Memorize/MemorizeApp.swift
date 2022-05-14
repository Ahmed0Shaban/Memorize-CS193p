//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ahmed Shaban on 19/03/2022.
//

import SwiftUI

@main

struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    // This is a pointer, the pointer itself is the constant.
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
