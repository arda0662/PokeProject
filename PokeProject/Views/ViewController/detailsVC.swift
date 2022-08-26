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
        self.view.backgroundColor = .blue
        imageBackgroundView.backgroundColor = .red
        imageBackgroundView.clipsToBounds = true
        imageBackgroundView.layer.cornerRadius = 30
        imageBackgroundView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        //imageBackgroundView.layer.cornerRadius = CGSize(width: 20, height: 20)
        imageBackgroundView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        
    }
}

extension UIView {
    func roundedCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

//public struct CACornerMask : OptionSet {
//    public init(rawValue: UInt)
//    public static var layerMinXMinYCorner: CACornerMask { get }
//    public static var layerMaxXMinYCorner: CACornerMask { get }
//    public static var layerMinXMaxYCorner: CACornerMask { get }
//    public static var layerMaxXMaxYCorner: CACornerMask { get }
//}
