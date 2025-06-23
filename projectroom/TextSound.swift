//
//  testSound.swift
//  projectroom
//
//  Created by Emanuele Bazzicalupo on 12/03/25.
//

import SwiftUI
import AVKit

class soundManager {
    static let instance = soundManager()
    
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "sans_voice", withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

struct SoundsBootcamp: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Sound1") {
                soundManager.instance.playSound()
            }
            Button("Sound2") {
                
            }
        }
    }
}

struct SoundsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundsBootcamp()
    }
}
