//
//  Point_Of_Sale_TDDTests.swift
//  Point Of Sale TDDTests
//
//  Created by Vito Borghi on 27/10/2023.
//

import XCTest
@testable import Point_Of_Sale_TDD

final class Point_Of_Sale_TDDTests: XCTestCase {

    //1. Barcode ‘12345’ should display price ‘$7.25’
    func testsForBarcode12345() {
        let sample = CodeScanner()
        
        XCTAssertEqual(sample.scan(barcodes: ["12345"]), "$7.25")
    }
    //2. Barcode ‘23456’ should display price ‘$12.50’
    func testForBarcode23456() {
        let sample = CodeScanner()
        
        XCTAssertEqual(sample.scan(barcodes: ["23456"]), "$12.50")
    }
    
    //3. Barcode ‘99999’ should display ‘Error: barcode not found’
    func testForBarcode99999DisplaysError(){
        let sample = CodeScanner()
        XCTAssertEqual(sample.scan(barcodes: ["99999"]), "Error: barcode not found")
    }
    
    //4. Empty barcode should display ‘Error: empty barcode’
    func testForEmptyBarcodeReturnsError() {
        let sample = CodeScanner()
        XCTAssertEqual(sample.scan(barcodes: [""]), "Error: empty barcode")
    }
    
    //5. Introduce a concept of total command where it is possible to scan multiple items. The command would display the sum of the scanned product prices
    func testForShoppingCartShowingSumOfBarcodes(){
        let sample = CodeScanner()
        
        XCTAssertEqual(sample.scan(barcodes: ["12345","23456"]), "$19.75")
    }
}
