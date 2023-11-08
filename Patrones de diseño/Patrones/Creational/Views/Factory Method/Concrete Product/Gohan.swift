//
//  Gohan.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import Foundation

class Gohan: Peleador {
    var nombre: String
    var poder: String
    var fase: Int
    
    init(nombre: String, poder: String, fase: Int) {
        self.nombre = nombre
        self.poder = poder
        self.fase = fase
    }
    
    func lanzarPoder() {
        print(poder + "!!")
    }
    
    func evolucionar() {
        fase = fase + 1
        print("Tu personaje evolucionó")
    }
}
