/* Gui Reis    -    gui.sreis25@gmail.com */

/* Bibliotecas necessárias: */
import UIKit


class HomeView: ViewWithViewCode {
    
    /* MARK: - Atributos */
    
    let ringView: CustomLabel = {
        let lbl = CustomLabel()
        lbl.isCircular = true
        lbl.backgroundColor = .systemBlue.withAlphaComponent(0.3)
        lbl.textColor = .systemBlue
        lbl.textAlignment = .center
        
        let color: UIColor = .orange
        lbl.layer.borderColor = color.cgColor
        return lbl
    }()
    
    
    let referenceView: UIView = {
        let view = CustomViews.newView()
        view.backgroundColor = .red
        return view
    }()
    
    
    let upperButton: CustomButton = {
        let but = CustomButton()
        but.isCircular = true
        but.setTitle("+", for: .normal)
        but.setTitleColor(.systemBlue, for: .normal)
        but.backgroundColor = .systemBlue.withAlphaComponent(0.3)
        return but
    }()
    
    
    let lowerButton: CustomButton = {
        let but = CustomButton()
        but.isCircular = true
        but.setTitle("-", for: .normal)
        but.setTitleColor(.systemBlue, for: .normal)
        but.backgroundColor = .systemBlue.withAlphaComponent(0.3)
        return but
    }()
    
    
    
    let ringBorder: CGFloat = 5
    
    
    
    /* MARK: - Ecapsulamento */
    
    public func changeRingSize(to size: CGFloat, ringNumber: String) {
        let circleSize = self.getPointValue(of: size)
        self.ringView.circleSize = circleSize
        
        self.ringView.text = ringNumber
    }
    
    
    
    /* Ações de Botões */
    
    public func setUpperButtonAction(target: Any?, action: Selector) -> Void {
        self.upperButton.addTarget(target, action: action, for: .touchDown)
    }
    
    
    public func setLowerButtonAction(target: Any?, action: Selector) -> Void {
        self.lowerButton.addTarget(target, action: action, for: .touchDown)
    }
    
    
    
    /* MARK: - Configurações */
    
    private func getPointValue(of num: CGFloat) -> CGFloat {
        let cm = num/10
        let pixels = 47*cm
        let points = pixels*1.333
        return points
    }
    
    
    
    /* MARK: - View Code */
    
    override func setupHierarchy() {
        self.addSubview(self.ringView)
        self.addSubview(self.referenceView)
        self.addSubview(self.lowerButton)
        self.addSubview(self.upperButton)
    }
    
    
    override func setupView() {
        self.backgroundColor = .white
        self.ringView.layer.borderWidth = self.ringBorder
    }
    
    
    override func setupFonts() {
        self.ringView.setupFont(with: FontInfo(fontSize: 20, weight: .medium))
    }
    
    
    override func createStaticConstraints() -> [NSLayoutConstraint] {
        let space: CGFloat = 40
        
        let constraints = [
            self.ringView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.ringView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            
            self.referenceView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.referenceView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.referenceView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.referenceView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.referenceView.heightAnchor.constraint(equalToConstant: 1),
            
            
            self.lowerButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -space),
            self.lowerButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: space),
            
            
            self.upperButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -space),
            self.upperButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -space),
        ]
        return constraints
    }
    
    
    override func createDynamicConstraints() {
        let buttonSize: CGFloat = 35
        self.upperButton.circleSize = buttonSize
        self.lowerButton.circleSize = buttonSize
    }
}
