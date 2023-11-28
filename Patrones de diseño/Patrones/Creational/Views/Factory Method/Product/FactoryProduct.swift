//
//  FactoryProduct.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import Foundation

protocol Peleador {
    var nombre: String { get }
    var poder: String { get }
    var fase: Int { get set }
    
    func lanzarPoder()
    func evolucionar()
}
