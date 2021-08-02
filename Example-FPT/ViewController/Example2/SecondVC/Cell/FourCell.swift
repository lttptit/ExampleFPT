//
//  FourCell.swift
//  Example-FPT
//
//  Created by bean99 on 30/07/2021.
//

import UIKit

class FourCell: UICollectionViewCell {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var btn: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myView.layer.shadowOpacity = 0.6
        btn.layer.cornerRadius = 23
    }

}
