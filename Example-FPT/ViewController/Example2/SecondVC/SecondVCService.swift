//
//  SecondVCService.swift
//  Example-FPT
//
//  Created by bean99 on 02/08/2021.
//

import Foundation

class SecondVCService {
    
    func getFakeData(_ callBack: @escaping ([ModelData])->Void) {
        var arrData: [ModelData] = []
        arrData.append(ModelData(txt1: "三菱UFJ銀行 ", txt2: "りそな銀行"))
        arrData.append(ModelData(txt1: "三井住友銀行 ", txt2: "埼玉りそな銀行"))
        arrData.append(ModelData(txt1: "みずほ銀行 ", txt2: "ゆうちょ銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        arrData.append(ModelData(txt1: "○○○○○○○○銀行", txt2: "○○○○○○○○銀行"))
        callBack(arrData)
    }
}
