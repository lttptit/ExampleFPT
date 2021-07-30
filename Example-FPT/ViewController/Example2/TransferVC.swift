//
//  TransferVC.swift
//  Example-FPT
//
//  Created by bean99 on 30/07/2021.
//

import UIKit

class TransferVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openVC1(_ sender: Any) {
        openVC()
    }
    
    @IBAction func openVC2(_ sender: Any) {
        openVC()
    }
    
    @IBAction func openVC3(_ sender: Any) {
        openVC()
    }
    
    func openVC() {
        let vc = SecondVC()
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
