//
//  SpringAnimationViewController.swift
//  Lesson2.9
//
//  Created by Nasim Nozirov on 07.06.2022.
//


import Spring

class SpringAnimationViewController: UIViewController {
    
    //    MARK: IB Outlet
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var springLabel: UILabel! {
        didSet {
            springLabel.text = animation.description // тут при запуске показываем значение первой анимации
        }
    }
    
    //    MARK:  Private Properties
    private var animation = Animation.getRandomAnimation()
    
    //    MARK: IB Actions
    @IBAction func springAnimation(_ sender: SpringButton) {
        springLabel.text = animation.description // тут при нажаний обнавляем значение Label во view
        
        // тут мы передаем вид и параметры анимации во view
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate() // тут вызываем метод animate() чтобы сработала анимация
        
        animation = Animation.getRandomAnimation()  // тут обьнавляем значение в  animation  чтобы вынести на кнопку название следующего анимации
        sender.setTitle("Run \(animation.name)", for: .normal)
//        sender.animation = "pop"
//        sender.animate()
    }
}
