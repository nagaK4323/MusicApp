//
//  MusicAppTests.swift
//  MusicAppTests
//
//  Created by Naga k on 12/16/20.
//

import XCTest
@testable import MusicApp

class MusicAppTests: XCTestCase {
    
    var artistModel : ArtistModel?
    var viewControllerUnderTest: ViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewControllerUnderTest = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        self.viewControllerUnderTest.loadView()
        self.viewControllerUnderTest.viewDidLoad()
        
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testContainsATableView() {
        XCTAssertNotNil(viewControllerUnderTest.ArstistTableView)
    }
    
    
    
}
