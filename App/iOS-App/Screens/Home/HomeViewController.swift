/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import UIKit


class HomeViewController: UIViewController {
    
    /* MARK: - Atributos */
    
    let myView = HomeView()
    
    
    // Outros
    
    let numberSize = Array(Range(7...35))
    
    let mmSizes = [14.96, 15.28, 15.60, 15.92, 16.23, 16.55, 16.87, 17.19, 17.51, 17.83, 18.14, 18.46, 18.76, 19.10, 19.42, 19.74, 20.05, 20.37, 20.69, 21.01, 21.33, 21.65, 21.96, 22.28, 22.60, 22.92, 23.24, 23.55, 23.87]
    
    var actualIndex = 0
    
    
    
    /* MARK: - Ciclo de Vida */
    
    override func loadView() {
        self.view = self.myView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupButtonsAction()
        self.setRingSize()
    }
    
    
    
    /* MARK: - Acões de Botões */
    
    @objc
    private func increaseRingSizeAction() {
        let newSize = self.actualIndex + 1
        guard newSize < self.numberSize.count else { return }
        self.actualIndex = newSize
        self.setRingSize()
    }
    
    @objc
    private func decreaseRingSizeAction() {
        let newSize = self.actualIndex - 1
        guard newSize >= 0 else { return }
        self.actualIndex = newSize
        self.setRingSize()
    }
    
    
    
    /* MARK: - Configurações */
    
    private func setRingSize() {
        let newRingSize = self.mmSizes[self.actualIndex]
        let newNumberSize = "\(self.numberSize[self.actualIndex])"
        self.myView.changeRingSize(to: newRingSize, ringNumber: newNumberSize)
    }
    
    
    private func setupButtonsAction() {
        self.myView.setUpperButtonAction(target: self, action: #selector(self.increaseRingSizeAction))
        self.myView.setLowerButtonAction(target: self, action: #selector(self.decreaseRingSizeAction))
    }
}

