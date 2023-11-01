//
//  FactoryMethodViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 20/09/23.
//

import UIKit

class FactoryMethodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
