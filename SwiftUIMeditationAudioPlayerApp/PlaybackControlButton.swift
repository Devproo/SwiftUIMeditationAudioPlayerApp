//
//  PlaybackControlButton.swift
//  SwiftUIMeditationAudioPlayerApp
//
//  Created by ipeerless on 13/08/2023.
//

import SwiftUI

struct PlaybackControlButton: View {
    var systemName: String = "play"
    var fontSize:CGFloat = 26
    var color: Color = .white
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }

    }
}

struct PlaybackControlButton_Previews: PreviewProvider {
    static var previews: some View {
        PlaybackControlButton( action: {})
            .preferredColorScheme(.dark)
    }
}
