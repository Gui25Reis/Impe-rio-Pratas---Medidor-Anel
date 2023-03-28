/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import class UIKit.UIButton
import class UIKit.UIFont


extension UIButton {
    
    internal func setupFont(with config: FontInfo) {
//        var newConfig = config
//        newConfig.fontFamily = .graffiti
        
        self.titleLabel?.font = UIFont.setupFont(with: config)
    }
}
