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
    var tipo: TipoPatron
    var caseName: AllPatterType
    
    init(nombre: String, info: TipoPatron, caseName: AllPatterType) {
        self.nombre = nombre
        self.tipo = info
        self.caseName = caseName
    }
}


let patronesCreacionales = [
    PatronesCreacionales(nombre: "Factory Method", info: .creacional, caseName: .FactoyMethod),
    PatronesCreacionales(nombre: "Abstract Factory", info: .creacional, caseName: .AbstractMethod),
    PatronesCreacionales(nombre: "Builder", info: .creacional, caseName: .Builder),
    PatronesCreacionales(nombre: "Prototype", info: .creacional, caseName: .Prototype),
    PatronesCreacionales(nombre: "Singleton", info: .creacional, caseName: .Singleton),
]
