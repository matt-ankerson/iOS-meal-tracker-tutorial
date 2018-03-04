//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Matthew Ankerson on 20/02/18.
//  Copyright © 2018 Matthew Ankerson. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    func testMealInitializationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        // Max rating
        let maxRatingMeal = Meal.init(name: "Max", photo: nil, rating: 5)
        XCTAssertNotNil(maxRatingMeal)
    }
    
    func testMealInitializationFails() {
        // Negative rating
        let negativeMealRating = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeMealRating)
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        // Empty string
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
    
}
