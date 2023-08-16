//
//  Extensions.swift
//  SwiftUIMeditationAudioPlayerApp
//
//  Created by ipeerless on 13/08/2023.
//

import Foundation

extension DateComponentsFormatter {
    static let abbreviated: DateComponentsFormatter = {
        print("initializing DateComponentsFormatter.abbreviated ")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        return formatter
    }()
    static let position: DateComponentsFormatter = {
        print("initializing.DateComponentsFormatter.positional")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
   
}
