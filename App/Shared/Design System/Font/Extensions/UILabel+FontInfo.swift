/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import class UIKit.UIFont
import class UIKit.UILabel


extension UILabel {
    
    internal func setupFont(with config: FontInfo) {
        self.font = UIFont.setupFont(with: config)
    }
}
