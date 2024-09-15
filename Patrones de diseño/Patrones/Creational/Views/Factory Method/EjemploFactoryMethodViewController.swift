//
//  EjemploFactoryMethodViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 06/11/23.
//

import UIKit

class EjemploFactoryMethodViewController: UIViewController {

    @IBOutlet weak var myCharacter: UIImageView!
    @IBOutlet weak var enemy: UIImageView!
    
    var myCharacterSelect: Peleador?
    var enemySelected: Peleador?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectGoku(_ sender: UIButton) {
        let character = SelectEnemyFactory().createEnemy(name: .Goku)
        if sender.tag == 0 {
            myCharacterSelect = character
            myCharacter.image = UIImage(named: (myCharacterSelect?.nombre ?? "Goku") + String(myCharacterSelect?.fase ?? 1))
        } else {
            enemySelected = character
            enemy.image = UIImage(named: (enemySelected?.nombre ?? "Goku") + String(enemySelected?.fase ?? 1))
        }
    }

    @IBAction func selectGohan(_ sender: UIButton) {
        let character = SelectEnemyFactory().createEnemy(name: .Gohan)
        if sender.tag == 0 {
            myCharacterSelect = character
            myCharacter.image = UIImage(named: (myCharacterSelect?.nombre ?? "Gohan") + String(myCharacterSelect?.fase ?? 1))
        } else {
            enemySelected = character
            enemy.image = UIImage(named: (enemySelected?.nombre ?? "Goku") + String(enemySelected?.fase ?? 1))
        }
    }
    
    @IBAction func selectRandom(_ sender: UIButton) {
        let character = RandomEnemyFactory().createEnemy(name: nil)
        if sender.tag == 0 {
            myCharacterSelect = character
            myCharacter.image = UIImage(named: (myCharacterSelect?.nombre ?? "Gohan") + String(myCharacterSelect?.fase ?? 1))
        } else {
            enemySelected = character
            enemy.image = UIImage(named: (enemySelected?.nombre ?? "Goku") + String(enemySelected?.fase ?? 1))
        }
    }
    
    @IBAction func resetImage(_ sender: UIButton) {
        if sender.tag == 0 {
            myCharacterSelect = nil
            myCharacter.image = UIImage(systemName: "nosign")
            
        } else {
            enemySelected = nil
            enemy.image = UIImage(systemName: "nosign")
        }
    }
    
    @IBAction func goToCodeView(_ sender: Any) {
        CoordinatorPatter.shared.navigationIncrementView(fatherVC: self, nameUML: Img.FactoyMethod.imgUML.rawValue, nameCode: Img.FactoyMethod.imgCode.rawValue)
    }
}
