//
//  ImprementacionGame.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import Foundation

class Game {
    var enemyFactory: EnemyFactory? = nil
    
    //Suponemos que es un botón para crear
    func setFormatEnemy(name: NamePeleador? = nil) {
        if name != nil {
            self.enemyFactory = SelectEnemyFactory()
        } else {
            self.enemyFactory = RandomEnemyFactory()
        }
    }
    
    func setFormatEnemyByConcrete(formatFactory: EnemyFactory) {
        if formatFactory is SelectEnemyFactory {
            self.enemyFactory = SelectEnemyFactory()
        } else {
            self.enemyFactory = RandomEnemyFactory()
        }
    }
}
