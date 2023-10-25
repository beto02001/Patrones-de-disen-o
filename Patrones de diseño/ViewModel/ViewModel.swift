//
//  ViewModel.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 21/09/23.
//

import Foundation


class ViewModel {
    enum TipoPatron {
        case creacional
        case estructural
        case comportamiento
    }
    
    var arrayCreacional: Creacional
    
    init() {
        self.arrayCreacional = Creacional()
    }
    
    
    static let shared = ViewModel()
    
    func countPatrones(tipo: TipoPatron) -> Int {
        switch tipo {
        case .creacional:
            return arrayCreacional.patrones.count
        case .estructural:
            return 1
        case .comportamiento:
            return 1
        }
    }
}
