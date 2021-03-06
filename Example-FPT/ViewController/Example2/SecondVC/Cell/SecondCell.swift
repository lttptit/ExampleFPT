//
//  SecondCell.swift
//  Example-FPT
//
//  Created by bean99 on 30/07/2021.
//

import UIKit

class SecondCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionData: UICollectionView!
    var arrData: [ModelData] = []
    var presenter = SecondVCPresenter(service: SecondVCService())


    override func awakeFromNib() {
        super.awakeFromNib()
        presenter.delegate = self
        presenter.getFakeDataCell()
        configUI()
    }
    
    func configUI() {
        collectionData.delegate = self
        collectionData.dataSource = self
        collectionData.register(UINib(nibName: "DataCell", bundle: nil), forCellWithReuseIdentifier: "DataCell")
    }

}
extension SecondCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionData.dequeueReusableCell(withReuseIdentifier: "DataCell", for: indexPath) as! DataCell
        cell.lbl1.text = arrData[indexPath.row].txt1
        cell.lbl2.text = arrData[indexPath.row].txt2
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(hex: "F2F2F2")
        }
        else {
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthCell = collectionData.frame.size.width
        let heightCell = collectionData.frame.size.height/CGFloat(arrData.count)
        return CGSize(width: widthCell, height: heightCell)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
extension SecondCell: SecondVCDelegate {
    func setFakeDataCell(data: [ModelData]) {
        arrData = data
        collectionData.reloadData()
    }
    
    
}
