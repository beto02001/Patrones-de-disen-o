//
//  CreatorFactory.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import Foundation

protocol EnemyFactory {
    func createEnemy(name: NamePeleador?) -> Peleador
}

enum NamePeleador {
    case Goku
    case Gohan
}
