//
//  CardUIView.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 21/09/23.
//

import UIKit

class CardUIView: UIView {
    
    let gradientsColors = [
        [UIColor(named: "Azul")?.cgColor, UIColor(named: "Verde")?.cgColor],
        [UIColor(named: "Rojo")?.cgColor, UIColor(named: "Amarillo")?.cgColor],
        [UIColor(named: "Lila")?.cgColor, UIColor(named: "Rojo")?.cgColor],
        [UIColor(named: "Verde")?.cgColor, UIColor(named: "Amarillo")?.cgColor],
        [UIColor(named: "Lila")?.cgColor, UIColor(named: "Azul")?.cgColor]
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        
    }
    
    private func commonInit() {
        self.layer.cornerRadius = 20.0
        self.layer.borderWidth = 5.0
        self.layer.borderColor = UIColor.clear.cgColor
        let width = self.layer.bounds.width * 0.6
        let height = self.layer.bounds.width * 0.3
        let maskPath = UIBezierPath(
            roundedRect: self.bounds,
            byRoundingCorners: [.topRight],
            cornerRadii: CGSize(width: width, height: height)
        )
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
    
    func degradado(index: Int) {
        // Crear una capa de degradado
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = layer.visibleRect
        // Definir los colores del degradado
        gradientLayer.colors = gradientsColors[index % gradientsColors.count]
        // Puedes ajustar la dirección del degradado configurando startPoint y endPoint
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0) // Esquina superior izquierda
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)   // Esquina inferior derecha
        
        // Agregar la capa de degradado como subcapa
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
