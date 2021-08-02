//
//  TransferVC.swift
//  Example-FPT
//
//  Created by bean99 on 30/07/2021.
//

import UIKit

class TransferVC: UIViewController {
    
    private var presenter = TransferPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewDelegate(delegate: self)
    }
    
    @IBAction func openVC1(_ sender: Any) {
        presenter.open()
    }
    
    @IBAction func openVC2(_ sender: Any) {
        presenter.open()
    }
    
    @IBAction func openVC3(_ sender: Any) {
        presenter.open()
    }

}
extension TransferVC: TransferVCDelegate {
    func openVC() {
        let vc = SecondVC()
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
