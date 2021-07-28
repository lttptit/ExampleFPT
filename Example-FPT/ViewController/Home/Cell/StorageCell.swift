//
//  StorageCell.swift
//  Example-FPT
//
//  Created by bean99 on 28/07/2021.
//

import UIKit
import CircleProgressView

class StorageCell: UICollectionViewCell {

    @IBOutlet weak var lblText1: UILabel!
    @IBOutlet weak var lblText2: UILabel!
    @IBOutlet weak var progressView: CircleProgressView!
    @IBOutlet weak var lblText3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configUI()
    }
    
    func configUI() {
        progressView.progress = 0.65
        let txt1 = "利用量のリセットまで \nあ と "
        let txt2 = "88 "
        let txt3 = "日"
        let fontRegular = UIFont.systemFont(ofSize: 16, weight: .regular)
        let fontBold = UIFont.systemFont(ofSize: 30, weight: .semibold)
        let attributes = [NSAttributedString.Key.font: fontRegular]
        let attributes2 = [NSAttributedString.Key.font: fontBold]
        let attr1String = NSAttributedString(string: txt1, attributes: attributes)
        let attr2String = NSAttributedString(string: txt2, attributes: attributes2)
        let attr3String = NSAttributedString(string: txt3, attributes: attributes)
        let resultString = NSMutableAttributedString()
        resultString.append(attr1String)
        resultString.append(attr2String)
        resultString.append(attr3String)
        lblText1.attributedText = resultString
        
        let txt4 = "今月分のデータ量 \n"
        let txt5 = "888.88"
        let txt6 = " GB"
        let attr4String = NSAttributedString(string: txt4, attributes: attributes)
        let attr5String = NSAttributedString(string: txt5, attributes: attributes2)
        let attr6String = NSAttributedString(string: txt6, attributes: attributes)
        let resultString2 = NSMutableAttributedString()
        resultString2.append(attr4String)
        resultString2.append(attr5String)
        resultString2.append(attr6String)
        lblText2.attributedText = resultString2
        
        let txt7 = "オートチャージ"
        let txt8 = " ON"
        let fontBold2 = UIFont.systemFont(ofSize: 16, weight: .semibold)
        let attributes3 = [NSAttributedString.Key.font: fontBold2]
        let attr7String = NSAttributedString(string: txt7, attributes: attributes)
        let attr8String = NSAttributedString(string: txt8, attributes: attributes3)
        let resultString3 = NSMutableAttributedString()
        resultString3.append(attr7String)
        resultString3.append(attr8String)
        lblText3.attributedText = resultString3


    }

}
