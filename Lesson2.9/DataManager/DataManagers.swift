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
    // тут мы обращаемся к Фреймворк Spring и извлекаем перечисление и из enum извлекаем массив с анимации
    let presets = Spring.AnimationPreset.allCases // метод  allCases возвращает массив анимации
    let curves = Spring.AnimationCurve.allCases
    
    private init() { }
}
