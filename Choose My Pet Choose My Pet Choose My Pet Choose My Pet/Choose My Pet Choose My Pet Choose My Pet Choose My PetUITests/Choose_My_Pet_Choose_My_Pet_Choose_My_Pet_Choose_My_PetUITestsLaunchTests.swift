//
//  Choose_My_Pet_Choose_My_Pet_Choose_My_Pet_Choose_My_PetUITestsLaunchTests.swift
//  Choose My Pet Choose My Pet Choose My Pet Choose My PetUITests
//
//  Created by موضي الحربي on 19/03/1443 AH.
//

import XCTest

class Choose_My_Pet_Choose_My_Pet_Choose_My_Pet_Choose_My_PetUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
