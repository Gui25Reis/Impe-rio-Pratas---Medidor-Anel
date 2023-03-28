/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import UIKit


protocol CollectionFlowLayoutAttributes {
    
    var cellSize: CGSize { get set }
    
    var spaceBetweenCells: CGFloat { get set }
    
    var scrollDirection: UICollectionView.ScrollDirection { get set }
}
