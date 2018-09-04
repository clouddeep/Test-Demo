//
//  Test_DemoUITests.m
//  Test DemoUITests
//
//  Created by Superbil on 2018/9/4.
//  Copyright © 2018年 shouchengduan. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Test_DemoUITests : XCTestCase

@end

@implementation Test_DemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testChangeImage {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"photo button"] tap];

    for (int i = 0; i < 10; i++) {
        XCUIElement *c01JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c01.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c01.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c01JpgImage swipeLeft];

        XCUIElement *c04JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c04.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c04.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c04JpgImage swipeLeft];

        XCUIElement *c03JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c03.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c03.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c03JpgImage swipeLeft];

        XCUIElement *c02JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c02.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c02.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c02JpgImage swipeLeft];
    }
}

- (void)testRotateImage {
    [[[XCUIApplication alloc] init].buttons[@"photo button"] tap];

    for (int i = 0; i < 10; i++) {
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationLandscapeRight;
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationPortraitUpsideDown;
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationLandscapeLeft;
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationPortrait;
    }
}

- (void)testTwerkieEnable {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"photo button"] tap];

    XCUIElement *gyroButtonButton = app.buttons[@"gyro button"];

    XCUIElementQuery *sheetsQuery = app.sheets;
    XCUIElement *enableGyroButton = sheetsQuery.buttons[@"Enable gyro"];
    XCUIElement *disableGyroButton = sheetsQuery.buttons[@"Disable gyro"];

    for (int i = 0; i < 10; i++) {
        [gyroButtonButton tap];
        [enableGyroButton tap];
        [gyroButtonButton tap];
        [disableGyroButton tap];
    }
}

- (void)testTwerkieChangeImage {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"photo button"] tap];

    XCUIElement *gyroButtonButton = app.buttons[@"gyro button"];

    XCUIElementQuery *sheetsQuery = app.sheets;
    XCUIElement *enableGyroButton = sheetsQuery.buttons[@"Enable gyro"];

    [gyroButtonButton tap];
    [enableGyroButton tap];

    for (int i = 0; i < 10; i++) {
        XCUIElement *c01JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c01.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c01.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c01JpgImage swipeLeft];

        XCUIElement *c04JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c04.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c04.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c04JpgImage swipeLeft];

        XCUIElement *c03JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c03.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c03.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c03JpgImage swipeLeft];

        XCUIElement *c02JpgImage = app/*@START_MENU_TOKEN@*/.images[@"c02.jpg"]/*[[".images[@\"imageView\"]",".images[@\"c02.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [c02JpgImage swipeLeft];
    }
}

- (void)testTwerkieRotateImage {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"photo button"] tap];

    XCUIElement *gyroButtonButton = app.buttons[@"gyro button"];

    XCUIElementQuery *sheetsQuery = app.sheets;
    XCUIElement *enableGyroButton = sheetsQuery.buttons[@"Enable gyro"];

    [gyroButtonButton tap];
    [enableGyroButton tap];

    for (int i = 0; i < 10; i++) {
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationLandscapeRight;
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationPortraitUpsideDown;
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationLandscapeLeft;
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationPortrait;
    }
}

- (void)testChangeVideo {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"video button"] tap];
    
    XCUIElementQuery *tablesQuery = app.tables;
    XCUIElement *pacific2StaticText = /*@START_MENU_TOKEN@*/tablesQuery.staticTexts[@"Pacific 2"]/*[["tablesQuery","[",".cells matchingIdentifier:@\"video cell\"].staticTexts[@\"Pacific 2\"]",".staticTexts[@\"Pacific 2\"]"],[[[-1,0,1]],[[-1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/;
    XCUIElement *playerStaticText = /*@START_MENU_TOKEN@*/tablesQuery.staticTexts[@"Player"]/*[["tablesQuery","[",".cells matchingIdentifier:@\"video cell\"].staticTexts[@\"Player\"]",".staticTexts[@\"Player\"]"],[[[-1,0,1]],[[-1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/;

    XCUIElement *doneButton = app.buttons[@"Done"];

    for (int i = 0; i < 10; i++) {
        [pacific2StaticText tap];
        [doneButton tap];
        [playerStaticText tap];
        [doneButton tap];
    }
}

- (void)testSwitchVideoImage {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *videoButtonButton = app.buttons[@"video button"];
    XCUIElement *photoButtonButton = app.buttons[@"photo button"];

    XCUIElementQuery *tablesQuery = app.tables;

    XCUIElement *doneButton = app.buttons[@"Done"];
    XCUIElement *backButton = app.navigationBars[@"VideoTableView"].buttons[@"Back"];
    XCUIElement *backButton2 = app.navigationBars[@"ImageView"].buttons[@"Back"];

    for (int i = 0; i < 10; i++) {
        // Open video page
        [videoButtonButton tap];

        // Select one video
        [/*@START_MENU_TOKEN@*/tablesQuery.staticTexts[@"Pacific 2"]/*[["tablesQuery","[",".cells matchingIdentifier:@\"video cell\"].staticTexts[@\"Pacific 2\"]",".staticTexts[@\"Pacific 2\"]"],[[[-1,0,1]],[[-1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/ tap];
        [doneButton tap];

        // Back to main page
        [backButton tap];

        // Open photo page
        [photoButtonButton tap];

        [backButton2 tap];
    }
}

@end
