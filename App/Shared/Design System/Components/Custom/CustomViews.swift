/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import UIKit


/// Componentes de UI já padronizados de acordo com o projeto.
struct CustomViews {
    
    /// Cria uma nova label de acordo com a padronização do projeto
    static func newLabel() -> CustomLabel {
        let lbl = CustomLabel()
        lbl.backgroundColor = .clear
        lbl.textAlignment = .left
        return lbl
    }
    
    
    /// Cria uma nova view de acordo com a padronização do projeto
    static func newView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }
    
    
    /// Cria um botão de acordo com a padronização do projeto
    static func newButton() -> CustomButton {
        let but = CustomButton()
        return but
    }
    
    
    /// Cria uma imagem (view) de acordo com a padronização do projeto
    static func newImage() -> UIImageView {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.clipsToBounds = true
        
        return imgV
    }

            
    /// Cria uma page control de acordo com a padronização do projeto
    ///
    /// Valores padronizados:
    /// - Direção: vertical
    /// - Distribuição e alinhamento: centralizado
    static func newStackView() -> CustomStack {
        let stack = CustomStack()
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.distribution = .equalCentering
        stack.alignment = .center
        stack.axis = .vertical
        
        return stack
    }
 }
