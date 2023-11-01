//
//  FacadeViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 01/11/23.
//

import UIKit

class FacadeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
