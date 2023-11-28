//
//  ShowCodeFactoryMethodViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import UIKit

class ShowCodeFactoryMethodViewController: UIViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var imageCode: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.delegate = self
    }

}

extension ShowCodeFactoryMethodViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageCode
    }
}
