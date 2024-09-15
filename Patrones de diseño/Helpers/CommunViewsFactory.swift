//
//  CommunViewsFactory.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 03/09/24.
//

import Foundation
import UIKit

class CommunViewsFactory {
    
    static func buildStoryBoard(view: CommunViewsSB) -> UIStoryboard {
        return UIStoryboard(name: view.rawValue, bundle: nil)
    }
    
    static func vcNamesCreation(nameVC: CommunViewController) -> String {
        return nameVC.rawValue
    }
    
}
