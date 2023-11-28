//
//  SelectEnemyFactory.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import Foundation

class SelectEnemyFactory: EnemyFactory {
    func createEnemy(name: NamePeleador?) -> Peleador {
        switch name {
        case .Goku:
            return Goku(nombre: "Goku", poder: "Kame Hame Ha", fase: 1)
        case .Gohan:
            return Gohan(nombre: "Gohan", poder: "Masenko", fase: 1)
        case .none:
            return Goku(nombre: "Goku", poder: "Kame Hame Ha", fase: 1)
        }
    }
}
