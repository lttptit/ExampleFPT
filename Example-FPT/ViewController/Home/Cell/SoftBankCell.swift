//
//  SoftBankCell.swift
//  Example-FPT
//
//  Created by bean99 on 28/07/2021.
//

import UIKit

class SoftBankCell: UICollectionViewCell {

    @IBOutlet weak var btnRegister: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btnRegister.layer.cornerRadius = 15
        // Initialization code
    }

}
