//
//  ViewModel.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 21/09/23.
//

import Foundation

class ViewModel {
    
    var arrayCreacional: Creacional
    var arrayEstructutal: Estructural
    var arrayComportamiento: Comportamiento
    
    init() {
        self.arrayCreacional = Creacional()
        self.arrayEstructutal = Estructural()
        self.arrayComportamiento = Comportamiento()
    }
    
    static let shared = ViewModel()
}
