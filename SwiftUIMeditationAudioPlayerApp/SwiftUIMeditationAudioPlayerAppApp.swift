//
//  SwiftUIMeditationAudioPlayerAppApp.swift
//  SwiftUIMeditationAudioPlayerApp
//
//  Created by ipeerless on 13/08/2023.
//

import SwiftUI

@main
struct SwiftUIMeditationAudioPlayerAppApp: App {
    @StateObject var audioMnager: AudioManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioMnager)
        }
    }
}
