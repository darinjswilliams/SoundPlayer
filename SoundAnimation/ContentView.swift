//
//  ContentView.swift
//  SoundAnimation
//
//  Created by Darin Williams on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        Button("Play Sound"){
            soundPlayer.play()
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
