//
//  IncrementViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 03/09/24.
//

import UIKit
class IncrementViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageUML: UIImageView!
    @IBOutlet weak var imageCode: UIImageView!
    
    var nameUML: String?
    var nameCode: String?

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        self.setImage()
    }
    
    func setImage() {
        self.imageUML.image = UIImage(named: nameUML ?? "")
        self.imageCode.image = UIImage(named: nameCode ?? "")
    }
}

extension IncrementViewController: UIScrollViewDelegate {
        
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageCode
    }
}
