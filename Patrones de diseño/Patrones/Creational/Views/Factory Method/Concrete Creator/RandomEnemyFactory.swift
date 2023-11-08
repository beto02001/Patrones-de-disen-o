//
//  RandomEnemyFactory.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import Foundation

class RandomEnemyFactory: EnemyFactory {
    func createEnemy(name: NamePeleador?) -> Peleador {
        let number = Int.random(in: 1...10)
        if number <= 5 {
            return Gohan(nombre: "Gohan", poder: "Masenko", fase: 1)
        } else {
            return Goku(nombre: "Goku", poder: "Kame Hame Ha", fase: 1)
        }
    }
}
