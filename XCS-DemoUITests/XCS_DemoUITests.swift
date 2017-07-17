//
//  XCS_DemoUITests.swift
//  XCS-DemoUITests
//
//  Created by Syntel on 7/3/17.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

var app: XCUIApplication!
class XCS_DemoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    
    
    func testSegmentedController() {
        
        let secondButton = app.segmentedControls.buttons["Second"]
        let secondLabel = app.segmentedControls.buttons["Second Segment selected"]
        let firstLabel = app.segmentedControls.buttons["First Segment selected"]
        
        Thread.sleep(forTimeInterval: 10)
        
        if secondButton.isSelected {
            XCTAssertTrue(secondLabel.exists)
            XCTAssertFalse(firstLabel.exists)
            
            
        }
        
    }
    
}
