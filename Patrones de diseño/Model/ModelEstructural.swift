//
//  ModelEstructural.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 01/11/23.
//

import Foundation

import Foundation
import UIKit


struct Estructural {
    
    var patrones: [PatronesEstructurales]
    
    init() {
        self.patrones = patronesEstructurales
    }
}


struct PatronesEstructurales {
    
    var nombre: String
    var tipo: TipoPatron
    var caseName: AllPatterType
    
    init(nombre: String, info: TipoPatron, caseName: AllPatterType) {
        self.nombre = nombre
        self.tipo = info
        self.caseName = caseName
    }
}


let patronesEstructurales = [
    PatronesEstructurales(nombre: AllPatterType.Adapter.rawValue, info: .estructural, caseName: .Adapter),
    PatronesEstructurales(nombre: AllPatterType.Bridge.rawValue, info: .estructural, caseName: .Bridge ),
    PatronesEstructurales(nombre: AllPatterType.Composite.rawValue, info: .estructural, caseName: .Composite),
    PatronesEstructurales(nombre: AllPatterType.Decorator.rawValue, info: .estructural, caseName: .Decorator),
    PatronesEstructurales(nombre: AllPatterType.Facade.rawValue, info: .estructural, caseName: .Facade),
    PatronesEstructurales(nombre: AllPatterType.Flywight.rawValue, info: .estructural, caseName: .Flywight),
    PatronesEstructurales(nombre: AllPatterType.Proxy.rawValue, info: .estructural, caseName: .Proxy),
]
