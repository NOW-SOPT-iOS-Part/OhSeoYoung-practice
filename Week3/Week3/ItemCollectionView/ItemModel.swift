//
//  ItemModel.swift
//  Week3
//
//  Created by 오서영 on 2024/04/21.
//

import UIKit

struct ItemModel {
    let itemImg: UIImage?
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1"), name: "류희재", price: "22,000원", heartIsSelected: false)
        ]
    }
}


