//
//  Models.swift
//  Lesson2.9
//
//  Created by Nasim Nozirov on 05.06.2022.
//

import Foundation

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String { // здесь мы прописываем название и параметр анимации чтобы после отобразить во вю
    """
    name: \(name)
    curve: \(curve)
    force: \(String(format: "%.02f", force ))
    duration: \(String(format: "%.02f", duration ))
    delay: \(String(format: "%.02f", delay ))
    """
        // округление нужно для того чтобы отобразить во вю параметры анимации тут именно надо использовать String(format чтобы округление было в виде текста а не числовое
    }
    
    static func getRandomAnimation() -> Animation { // в этом статическом методе мы обращаемся в сервисному слою и оттуда берем массив с рандомными элементами и его исходящего значение если что то пойдет не так то мы установили любую анимацию чтобы мы не упали в рантайме. соотвественно этот метод возвращает одну анимацию которого мы и будем запускать
        Animation(
            name: DataManager.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "linear",
            force: Double.random(in: 1...1.5), // тут устанавливаем параметры анимации
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
