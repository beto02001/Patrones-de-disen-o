//
//  CardUIView.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 21/09/23.
//

import UIKit

class CardUIView: UIView {
    
    let gradientsColors = [
        [UIColor(named: "Amarillo")?.cgColor, UIColor(named: "Azul")?.cgColor],
        [UIColor(named: "Rojo")?.cgColor, UIColor(named: "Amarillo")?.cgColor],
        [UIColor(named: "Verde")?.cgColor, UIColor(named: "Rojo")?.cgColor],
        [UIColor(named: "Lila")?.cgColor, UIColor(named: "Amarillo")?.cgColor],
        [UIColor(named: "Lila")?.cgColor, UIColor(named: "Azul")?.cgColor]
    ]
    
    let colors = [UIColor(named: "Amarillo"), UIColor(named: "Azul"), UIColor(named: "Rojo"), UIColor(named: "Verde"), UIColor(named: "Lila")]
    
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
    
    func setColorCard(index: Int) {
        self.backgroundColor = self.colors[index % self.colors.count]
    }
}
