//
//  detailsVC.swift
//  PokeProject
//
//  Created by Arda Poyraz on 29.07.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var pokeNameLabel: UILabel!
    @IBOutlet weak var pokeAttributesLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var healthBar: UILabel!
    @IBOutlet weak var attackBar: UILabel!
    @IBOutlet weak var deffenceBar: UILabel!
    @IBOutlet weak var speedBar: UILabel!
    @IBOutlet weak var experienceBar: UILabel!
    @IBOutlet weak var imageBackgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.view.backgroundColor = .blue
        imageBackgroundView.backgroundColor = .red
        imageBackgroundView.layer.cornerRadius = 45
    }
}
