//
//  Code Scanner.swift
//  Point Of Sale TDD
//
//  Created by Vito Borghi on 27/10/2023.
//

import Foundation
class CodeScanner {
    
    func scan(barcode: String) -> String {
        if barcode == "12345" {
            return "$7.25"
        } else if barcode == "23456" { return "$12.50" }
        
        return ""
    }
}
