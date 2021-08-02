//
//  SecondVCPresenter.swift
//  Example-FPT
//
//  Created by bean99 on 02/08/2021.
//

import Foundation

protocol SecondVCDelegate {
    func setFakeDataCell(data: [ModelData])
}

class SecondVCPresenter {
    
    var delegate: SecondVCDelegate?
    var service: SecondVCService?
    
    init(service: SecondVCService) {
        self.service = service
    }
    
    func getFakeDataCell() {
        service?.getFakeData({ data in
            self.delegate?.setFakeDataCell(data: data)
        })
    }
    
    
}
