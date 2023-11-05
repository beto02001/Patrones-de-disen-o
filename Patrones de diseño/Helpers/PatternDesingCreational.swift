//
//  PatternDesingCreational.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 25/10/23.
//

import Foundation
import UIKit

class PatterAllCreationalFactory {
    
    static func buildStoryBoardPatter(patter: AllPatterType) -> UIStoryboard {
        return UIStoryboard(name: patter.rawValue, bundle: nil)
    }
    
    static func vcNamesCreation(patter: AllPatterType) -> String {
        return patter.rawValue + "ViewController"
    }
    
}

