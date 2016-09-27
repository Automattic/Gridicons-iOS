//
//  GridiconsTests.swift
//  GridiconsTests
//
//  Created by James Frost on 04/04/2016.
//  Copyright © 2016 Automattic. All rights reserved.
//

import XCTest
@testable import Gridicons

class GridiconsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        Gridicon.clearCache()
    }
    
    func testIconsAreCached() {
        let icon = Gridicon.iconOfType(.AddImage)
        let icon2 = Gridicon.iconOfType(.AddImage)
        
        XCTAssertEqual(icon, icon2)
        
        Gridicon.clearCache()
        let icon3 = Gridicon.iconOfType(.AddImage)
        
        XCTAssertNotEqual(icon2, icon3)
    }
    
    func testIconsAreTheCorrectSize() {
        let icon = Gridicon.iconOfType(.Domains)
        XCTAssertEqual(icon.size, Gridicon.defaultSize)
        
        let size = CGSize(width: 250, height: 250)
        let icon2 = Gridicon.iconOfType(.UserCircle, withSize: size)
        XCTAssertEqual(icon2.size, Gridicon.defaultSize)
    }
    
    func testSingleIconGenerationPerformance() {
        self.measureBlock {
            let _ = Gridicon.iconOfType(.Pages)
        }
    }
    
    func testAllIconGenerationPerformance() {
        let iconTypes: [GridiconType] = {
            var types = [GridiconType]()
            while let type = GridiconType(rawValue: types.count) {
                types.append(type)
            }
            
            return types
        }()
        
        self.measureBlock {
            let _ = iconTypes.map { Gridicon.iconOfType($0) }
        }
    }
}
