/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import class UIKit.UIFont


extension UIFont {

    static func setupFont(with config: FontInfo) -> UIFont? {
//        let family = config.fontFamily.fontName(weight: config.weight)
//        let font = UIFont(name: family, size: config.fontSize)
        let font = UIFont.systemFont(ofSize: config.fontSize, weight: config.weight.systemFont)
        return font
    }
}
