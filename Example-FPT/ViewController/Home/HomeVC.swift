//
//  HomeVC.swift
//  Example-FPT
//
//  Created by bean99 on 26/07/2021.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var collectionHome: UICollectionView!
    let TotalPaymentCell = "TotalPaymentCell"
    let StorageCell = "StorageCell"
    let PayPayCell = "PayPayCell"
    let PointTCell = "PointTCell"
    let VisaCardCell = "VisaCardCell"
    let PromotionCell = "PromotionCell"
    let SoftBankCell = "SoftBankCell"
    let SoftBankMapCell = "SoftBankMapCell"
    let MessageCell = "MessageCell"
    let ButtonCell = "ButtonCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    func configUI() {
        collectionHome.delegate = self
        collectionHome.dataSource = self
        collectionHome.showsVerticalScrollIndicator = false
        collectionHome.register(UINib(nibName: TotalPaymentCell, bundle: nil), forCellWithReuseIdentifier: TotalPaymentCell)
        collectionHome.register(UINib(nibName: StorageCell, bundle: nil), forCellWithReuseIdentifier: StorageCell)
        collectionHome.register(UINib(nibName: PayPayCell, bundle: nil), forCellWithReuseIdentifier: PayPayCell)
        collectionHome.register(UINib(nibName: PointTCell, bundle: nil), forCellWithReuseIdentifier: PointTCell)
        collectionHome.register(UINib(nibName: VisaCardCell, bundle: nil), forCellWithReuseIdentifier: VisaCardCell)
        collectionHome.register(UINib(nibName: PromotionCell, bundle: nil), forCellWithReuseIdentifier: PromotionCell)
        collectionHome.register(UINib(nibName: SoftBankCell, bundle: nil), forCellWithReuseIdentifier: SoftBankCell)
        collectionHome.register(UINib(nibName: SoftBankMapCell, bundle: nil), forCellWithReuseIdentifier: SoftBankMapCell)
        collectionHome.register(UINib(nibName: MessageCell, bundle: nil), forCellWithReuseIdentifier: MessageCell)
        collectionHome.register(UINib(nibName: ButtonCell, bundle: nil), forCellWithReuseIdentifier: ButtonCell)
    }
}
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row  {
        case 0:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: TotalPaymentCell, for: indexPath) as! TotalPaymentCell
            cell.layer.cornerRadius = 15
            return cell
        case 1 :
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: StorageCell, for: indexPath) as! StorageCell
            cell.layer.cornerRadius = 15
            return cell
        case 2:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: PayPayCell, for: indexPath) as! PayPayCell
            cell.layer.cornerRadius = 15
            return cell
        case 3:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: PointTCell, for: indexPath) as! PointTCell
            cell.layer.cornerRadius = 15
            return cell
        case 4:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: VisaCardCell, for: indexPath) as! VisaCardCell
            cell.layer.cornerRadius = 15
            return cell
        case 5:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: PromotionCell, for: indexPath) as! PromotionCell
            cell.layer.cornerRadius = 15
            return cell
        case 6:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: SoftBankCell, for: indexPath) as! SoftBankCell
            cell.layer.cornerRadius = 15
            return cell
        case 7:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: SoftBankMapCell, for: indexPath) as! SoftBankMapCell
            cell.layer.cornerRadius = 15
            return cell
        case 8:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: MessageCell, for: indexPath) as! MessageCell
            cell.layer.cornerRadius = 15
            return cell
        case 9:
            let cell = collectionHome.dequeueReusableCell(withReuseIdentifier: ButtonCell, for: indexPath) as! ButtonCell
            return cell
        default:
            return UICollectionViewCell()
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row != 7 && indexPath.row != 8 {
            if indexPath.row == 9 {
                return CGSize(width: collectionHome.frame.size.width, height: collectionHome.frame.size.height/8)
            }
            let widthCell = collectionHome.frame.size.width
            let heightCell = (widthCell * 240)/345
            return CGSize(width: widthCell, height: heightCell)
        }
        else {
            let widthCell = collectionHome.frame.size.width/2 - 5
            return CGSize(width: widthCell, height: widthCell)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
    }
    
    
}
