//
//  PaymentFactory.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 05/09/23.
//

import Foundation

class PaymentFactory {
    
    static func buildPayment(typePayment: TypePayment) -> Payment {
        switch typePayment {
        case .google:
            return GooglePayment()
        case .card:
            return cardPayment()
        }
    }
}
