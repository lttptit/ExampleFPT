//
//  ButtonCell.swift
//  Example-FPT
//
//  Created by bean99 on 29/07/2021.
//

import UIKit

class ButtonCell: UICollectionViewCell {

    @IBOutlet weak var btnRegister: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btnRegister.layer.cornerRadius = 20
        btnRegister.layer.borderColor = UIColor.init(hex: "0070F2").cgColor
        btnRegister.layer.borderWidth = 1
    }

}
