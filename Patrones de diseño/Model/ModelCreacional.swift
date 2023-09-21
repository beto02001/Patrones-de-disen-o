//
//  File.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 21/09/23.
//

import Foundation
import UIKit


struct Creacional {
    
    var patrones: [PatronesCreacionales]
    
    init() {
        self.patrones = patronesCreacionales
    }
}


struct PatronesCreacionales {
    
    var nombre: String
    var info: String
    var imagen: UIImage
    
    init(nombre: String, info: String, imagen: UIImage) {
        self.nombre = nombre
        self.info = info
        self.imagen = imagen
    }
}


let patronesCreacionales = [
    
    PatronesCreacionales(nombre: "Factory Method", info: "Permite a la subclase decidir qué tipo de instancia concreta necesita. \nSe utiliza para resolver el problema de cuando necesitamos crear una instancia de un objeto que no sabemos qué tipo va a ser", imagen: UIImage(named: "") ?? UIImage()),
    
]
