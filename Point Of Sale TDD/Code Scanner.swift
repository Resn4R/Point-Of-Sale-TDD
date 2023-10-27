//
//  Code Scanner.swift
//  Point Of Sale TDD
//
//  Created by Vito Borghi on 27/10/2023.
//

import Foundation
class CodeScanner {
    
    func scan(barcode: String) -> String {
        var result = ""
        
        switch barcode {
        case "12345": result = "$7.25"
        case "23456": result = "$12.50"
        case "": result = "Error: empty barcode"
        default: result = "Error: barcode not found"
        }
        
        return result
    }
}
