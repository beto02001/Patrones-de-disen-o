//
//  ViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 05/09/23.
// Primer cambio

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var vista: CardUIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vista.setColorCard(index: 1)
    }
}

