//
//  SecondVC.swift
//  Example-FPT
//
//  Created by bean99 on 30/07/2021.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var collectionData: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    func configUI() {
        collectionData.delegate = self
        collectionData.dataSource = self
        collectionData.showsVerticalScrollIndicator = false
        collectionData.register(UINib(nibName: "FirstCell", bundle: nil), forCellWithReuseIdentifier: "FirstCell")
        collectionData.register(UINib(nibName: "SecondCell", bundle: nil), forCellWithReuseIdentifier: "SecondCell")
        collectionData.register(UINib(nibName: "ThirdCell", bundle: nil), forCellWithReuseIdentifier: "ThirdCell")
        collectionData.register(UINib(nibName: "FourCell", bundle: nil), forCellWithReuseIdentifier: "FourCell")
    }

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
extension SecondVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionData.dequeueReusableCell(withReuseIdentifier: "FirstCell", for: indexPath) as! FirstCell
            return cell
        case 1:
            let cell = collectionData.dequeueReusableCell(withReuseIdentifier: "SecondCell", for: indexPath) as! SecondCell
            return cell
        case 2:
            let cell = collectionData.dequeueReusableCell(withReuseIdentifier: "ThirdCell", for: indexPath) as! ThirdCell
            return cell
        case 3:
            let cell = collectionData.dequeueReusableCell(withReuseIdentifier: "FourCell", for: indexPath) as! FourCell
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthCell = collectionData.frame.size.width
        var heightCell:CGFloat = 0
        switch indexPath.section {
        case 0:
            return CGSize(width: widthCell, height: collectionData.frame.size.height/8)
        case 1:
            heightCell = (collectionData.frame.size.height * 390) / 710
            return CGSize(width: widthCell, height: heightCell)
        case 2:
            heightCell = (collectionData.frame.size.height/4)
            return CGSize(width: widthCell, height: heightCell)
        case 3:
            heightCell = collectionData.frame.size.height/3.8
            return CGSize(width: widthCell, height: heightCell)
        default:
            break
        }
        return CGSize(width: 0, height: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 3 {
            return UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        }
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
