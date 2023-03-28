/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import struct CoreGraphics.CGFloat


struct FontInfo {
    let fontSize: CGFloat
    let weight: FontWeight
//    var fontFamily: AppFonts
    
    
    init(fontSize: CGFloat, weight: FontWeight, fontFamily: AppFonts? = nil) {
        self.fontSize = fontSize
        self.weight = weight
//        self.fontFamily = fontFamily ?? .default
    }
}
