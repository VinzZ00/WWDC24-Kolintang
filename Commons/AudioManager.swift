//
//  File.swift
//
//
//  Created by Elvin Sestomi on 06/02/24.
//

import Foundation
import AVFoundation

enum AudioManagerError : Error {
    case invalidNote
    case audioFileLoadError
    case audioSessionSetupError
}

class AudioManager: ObservableObject {
    private var audioPlayers: [String : AVAudioPlayer] = [ : ]
    
    private init() throws {
        try setupAudioSession()
        try loadAudioFiles()
    }
    
    private func setupAudioSession() throws {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            throw AudioManagerError.audioSessionSetupError
        }
    }
    
    private var kolintangNotes : [String] = ["A3#", "A3", "A4#", "A4", "A5", "A5#", "B3", "B4", "B5", "C4#", "C4", "C5#", "C5", "C6", "D4#", "D4", "D5#", "D5", "E4", "E5", "F4", "F4#", "F5", "F5#", "F5", "G3#", "G3", "G4", "G4#", "G5", "G5#"]
    
    private func loadAudioFiles() throws {
        for note in kolintangNotes {
            if let url = Bundle.main.url(forResource: note, withExtension: "wav") {
                do {
                    let player = try AVAudioPlayer(contentsOf: url)
                    audioPlayers[note] = player
                } catch {
                    throw AudioManagerError.audioFileLoadError
                }
            }
        }
    }
    
    func playSound(for notes: String) throws {
        let player = audioPlayers[notes]!
        player.currentTime = 0 // Rewind to the beginning
        player.play()
    }
    
    public static var shared : AudioManager {
        do {
            return try AudioManager()
        } catch {
            fatalError("Error initialize the Audio manager");
        }
    }
}
