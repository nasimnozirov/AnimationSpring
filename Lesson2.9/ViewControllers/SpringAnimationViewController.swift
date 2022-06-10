//
//  SpringAnimationViewController.swift
//  Lesson2.9
//
//  Created by Nasim Nozirov on 07.06.2022.
//


import Spring

class SpringAnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var springLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springLabel.text = animation.description
    }
    
    @IBAction func springAnimation(_ sender: SpringButton) {
        springLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        sender.animation = "pop"
        sender.animate()
    }
}
