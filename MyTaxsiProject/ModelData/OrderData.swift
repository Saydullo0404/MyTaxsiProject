//
//  OrderData.swift
//  MyTaxsiProject
//
//  Created by 1 on 17/12/21.
//

import UIKit

struct OrderData {
    let titleMonth: String
    let fomAddress: String
    let toAddress: String
    let time: [String]
    let carImage: [String]

}
struct OrderModel {
    static let data: [OrderData] = [
        OrderData(titleMonth: "6 Июля, Вторник", fomAddress: "улица Sharof Rashidov, Ташкент", toAddress: "5a улица Асадуллы Ходжаева", time: ["21:36 - 22:12","14:40 - 15:00","12:00 - 12:19"], carImage: ["lacet","aveo","malibu"]),
        OrderData(titleMonth: "5 Июля, Вторник", fomAddress: "улица Sharof Rashidov, Ташкент", toAddress: "5a улица Асадуллы Ходжаева", time: ["21:36 - 22:12","14:40 - 15:00","12:00 - 12:19"], carImage: ["lacet","aveo","malibu"])
    
    ]
    
}
