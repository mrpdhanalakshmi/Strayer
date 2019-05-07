//
//  LoginUITest.swift
//  StrayerUITests
//
//  Created by dhanalakshmi on 07/05/19.
//  Copyright © 2019 edu.strayer. All rights reserved.
//

import XCTest

class LoginUITest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoginFlow() {
        
        let app = XCUIApplication()
        app.staticTexts["Login"].tap()
        let usernameTextFiled = app.textFields["Username"]
        usernameTextFiled.tap()
        XCTAssert(usernameTextFiled.exists)
        usernameTextFiled.typeText("strayer")
        let passwordTextFiled = app.textFields["password"]
        passwordTextFiled.tap()
        passwordTextFiled.typeText("strayer123")
        XCTAssert(passwordTextFiled.exists)
        app.buttons["Submit"].tap()
        
        let loginAlert = app.alerts["Login"]
        loginAlert.staticTexts["Login"].tap()
        loginAlert.staticTexts["Logged in successfully"].tap()
        loginAlert.buttons["OK"].tap()
        
    }
    
}
