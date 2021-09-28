//
//  ViewController.swift
//  Lesson7
//
//  Created by Владимир Рузавин on 9/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topAnimationView: TestView!
    @IBOutlet weak var topAnimationViewCenterY: NSLayoutConstraint!
    
    private var didAnimate: Bool = false
    private var isAnimating: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func animateTopView() {
        UIView.animate(withDuration: 0.5) {
            self.topAnimationViewCenterY.constant = 100
            self.view.layoutIfNeeded()
        } completion: { (_) in
            self.didAnimate.toggle()
        }
    }
    
       
    @IBAction private func onButtonPressed(_ sender: Any) {
        self.topAnimationView.animate()
    }
}
