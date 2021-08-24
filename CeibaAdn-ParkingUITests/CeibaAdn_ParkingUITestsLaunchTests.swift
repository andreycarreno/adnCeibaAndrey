//
//  CeibaAdn_ParkingUITestsLaunchTests.swift
//  CeibaAdn-ParkingUITests
//
//  Created by Jeison Andrey Carreño Sánchez - Ceiba Software on 23/08/21.
//

import XCTest

class CeibaAdn_ParkingUITestsLaunchTests: XCTestCase {

//    override class var runsForEachTargetApplicationUIConfiguration: Bool {
//        true
//    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        
    }
    
    func testExample() throws{
        let app = XCUIApplication()
        app.launch()
    }
    
    func testLaunchPerformance() throws {
        
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        
    }
    
//    func testLaunch() throws {
//        let app = XCUIApplication()
//        app.launch()
//
//        // Insert steps here to perform after app launch but before taking a screenshot,
//        // such as logging into a test account or navigating somewhere in the app
//
//        let attachment = XCTAttachment(screenshot: app.screenshot())
//        attachment.name = "Launch Screen"
//        attachment.lifetime = .keepAlways
//        add(attachment)
//    }
}
