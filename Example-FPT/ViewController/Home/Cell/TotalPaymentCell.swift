//
//  TotalPaymentCell.swift
//  Example-FPT
//
//  Created by bean99 on 26/07/2021.
//

import UIKit

class TotalPaymentCell: UICollectionViewCell {

    @IBOutlet weak var lblPayment: UILabel!
    @IBOutlet weak var btnHideMoney: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btnHideMoney.layer.cornerRadius = 15
        btnHideMoney.layer.borderWidth = 1
        btnHideMoney.layer.borderColor = UIColor.init(hex: "0070F2").cgColor
        
    }

}
