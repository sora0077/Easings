import Foundation
import Easings


public func liveView(easings: Easings, autoreverses: Bool = false) -> UIView {
    
    let point = CALayer()
    point.backgroundColor = UIColor.red.cgColor
    point.frame.size = CGSize(width: 10, height: 10)
    point.frame.origin.y = 47.5
    point.cornerRadius = 5
    
    let animation = CABasicAnimation(keyPath: "position.x")
    animation.duration = 1
    animation.toValue = 95
    animation.fromValue = 5
    animation.timingFunction = CAMediaTimingFunction(easings: easings)
    animation.repeatCount = .infinity
    animation.autoreverses = autoreverses
    point.add(animation, forKey: nil)
    
    
    let canvas = UIView()
    canvas.layer.addSublayer(point)
    canvas.backgroundColor = .white
    canvas.frame.size = CGSize(width: 100, height: 100)
    
    return canvas
}
