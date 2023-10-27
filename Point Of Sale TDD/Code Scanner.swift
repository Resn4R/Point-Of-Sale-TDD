//
//  Code Scanner.swift
//  Point Of Sale TDD
//
//  Created by Vito Borghi on 27/10/2023.
//

import Foundation
class CodeScanner {
    
    func scan(barcodes: [String]) -> String {
        
        let emptyBarcode = {
            barcodes.contains("") && barcodes.count == 1
        }
        let invalidBarcode = {
            barcodes.contains("99999") && barcodes.count == 1
        }
        
        guard !emptyBarcode() else { return "Error: empty barcode" }
        
        guard !invalidBarcode() else { return "Error: barcode not found"}
        
        var shoppingCart = [Double]()
        
        barcodes.forEach{ barcode in
            switch barcode {
            case "12345": shoppingCart.append(7.25)
            case "23456": shoppingCart.append(12.50)
            default: return
            }
        }
        
        let total = shoppingCart.reduce(0.0,+)
        return String(format: "$%.2f", total)
    }
}
