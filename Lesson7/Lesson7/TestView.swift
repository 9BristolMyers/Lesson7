//
//  TestView.swift
//  Lesson7
//
//  Created by Владимир Рузавин on 9/28/21.
//

import UIKit

@IBDesignable
class TestView: UIView {
    
    private var path: UIBezierPath?
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: .init(x:90, y: 10))
        path.addLine(to: .init(x:90, y: 90))
        path.close()
        path.stroke()
        self.path = path
    }
    
    
    private func didAnmation() {
        
    }
    
    func animate() {
        let animation = CABasicAnimation(keyPath: "position.y")
        animation.fromValue = layer.frame.origin.y
        animation.toValue = 100
        animation.duration = 0.5
        layer.add(animation, forKey: nil)
    }
}
