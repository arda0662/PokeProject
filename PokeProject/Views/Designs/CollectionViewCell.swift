//
//  CollectionViewCell.swift
//  PokeProject
//
//  Created by Arda Poyraz on 7.07.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var cellCustomView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var pokeName: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
//        self.backgroundColor = .brown
        // Initialization code
//        let backgroundView = UIView()
//        backgroundView.backgroundColor = UIColor.red
//        self.selectedBackgroundView = backgroundView
//        self.backgroundColor = UIColor.red
        
    }
    
    func configure(with image : UIImage, with width : CGFloat) {
        myImage.image = image
        self.cellCustomView.backgroundColor = .cyan
        //((myImage.frame = CGRect(x: 5, y: 3, width: 10, height: 10)
        print("Arda")
        
        let newHeight = contentView.frame.size.height / 4
        let newWidth = contentView.frame.size.width / 4
        print(newWidth)
        print(newHeight)
        //myImage.translatesAutoresizingMaskIntoConstraints = false
       
        
        myImage.heightAnchor.constraint(equalToConstant: CGFloat(newHeight)).isActive = true
        myImage.widthAnchor.constraint(equalToConstant: CGFloat(newWidth)).isActive = true
        

    }

    static func nib() -> UINib {
        return UINib(nibName: "CollectionViewCell", bundle: nil)
    }
}
