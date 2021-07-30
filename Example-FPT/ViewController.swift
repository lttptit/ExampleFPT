//
//  ViewController.swift
//  Example-FPT
//
//  Created by bean99 on 23/07/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(openVC), with: self, afterDelay: 0)
    }
    
    @objc func openVC() {
        let vc = TransferVC()
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    

}

