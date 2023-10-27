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
        
        XCTAssertEqual(sample.scan(barcode: "12345"), "$7.25")
    }
    //2. Barcode ‘23456’ should display price ‘$12.50’
    func testForBarcode23456() {
        let sample = CodeScanner()
        
        XCTAssertEqual(sample.scan(barcode: "23456"), "$12.50")
    }
}
