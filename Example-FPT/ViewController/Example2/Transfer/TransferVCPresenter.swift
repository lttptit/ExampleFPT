//
//  TransferVCPresenter.swift
//  Example-FPT
//
//  Created by bean99 on 02/08/2021.
//

import UIKit

protocol TransferVCDelegate {
    func openVC()
}

typealias PresenterDelegate = TransferVCDelegate & UIViewController

class TransferPresenter {
    var delegate: PresenterDelegate?
    
    func setViewDelegate(delegate: PresenterDelegate) {
        self.delegate = delegate
    }
    
    func open() {
        delegate?.openVC()
    }
}
