//
//  ContentView.swift
//  SoundAnimation
//
//  Created by Darin Williams on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    let notificationGenerator = UINotificationFeedbackGenerator()
    
    var body: some View {
        VStack{
            Button("Play Sound and Haptics "){
                soundPlayer.play()
                notificationGenerator.notificationOccurred(.success)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .onAppear{
            notificationGenerator.prepare()
        }
    }
}


#Preview {
    ContentView()
}
