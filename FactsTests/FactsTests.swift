//
//  FactsTests.swift
//  FactsTests
//
//  Created by Hanuman on 20/06/18.
//  Copyright © 2018 Hanuman. All rights reserved.
//

import XCTest
@testable import Facts

class FactsTests: XCTestCase {
    var manager: ViewManager?
    
    let factTitle = "FactTitle"
    let factDescription = "FactDescription"
    let imageHref = "ImageHref"

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.manager = ViewManager()

        let fact1 = FactItem(title: factTitle, description: factDescription, imageHref: imageHref)
        self.manager?.factItems.append(fact1)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFacts() {
        // test fact added count
        XCTAssert(self.manager?.factsCount() == 1, "Fact added count does not match")
        
        XCTAssert(self.manager?.getFactItem(representedByRowNumber: 0) != nil, "Fact should exist")
        XCTAssert(self.manager?.getFactItem(representedByRowNumber: 1) == nil, "Fact should not exist")

    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
