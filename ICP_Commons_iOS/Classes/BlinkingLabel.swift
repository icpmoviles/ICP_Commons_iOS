import Foundation
import UIKit

@IBDesignable
class BlinkingLabel: UIView {
    public func startBlinking() {
        let options: UIViewAnimationOptions = .repeat// | .autoreverse
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
