//
//  Meditation.swift
//  SwiftUIMeditationAudioPlayerApp
//
//  Created by ipeerless on 13/08/2023.
//

import Foundation
final class MeditationViewModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation) {
        self.meditation = meditation
    }
}

struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(
            title: "Sample Meditation",
            description: "A calming meditation example",
            duration: 600, // 10 minutes in seconds
            track: "meditation1.mp3",
            image: "med.jpg"
        )
    
}
