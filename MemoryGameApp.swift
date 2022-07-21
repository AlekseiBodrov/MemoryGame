//
//  TrainerApp.swift
//  Trainer
//
//  Created by Алексей on 20.07.2022.
//

import SwiftUI

@main
struct TrainerApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModelGame: game)
        }
    }
}
