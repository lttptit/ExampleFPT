//
//  PayPayCell.swift
//  Example-FPT
//
//  Created by bean99 on 28/07/2021.
//

import UIKit

class PayPayCell: UICollectionViewCell {

    @IBOutlet weak var btnRegister: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btnRegister.layer.borderWidth = 1
        btnRegister.layer.borderColor = UIColor.init(hex: "0080FF").cgColor
        btnRegister.layer.cornerRadius = 15
    }

}
