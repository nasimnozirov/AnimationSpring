//
//  DataManager.swift
//  Lesson2.9
//
//  Created by Nasim Nozirov on 08.06.2022.
//

import Foundation
import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presets = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() { }
}
