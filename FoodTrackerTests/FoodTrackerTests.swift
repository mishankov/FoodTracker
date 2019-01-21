//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Денис on 19/01/2019.
//  Copyright © 2019 Denis Mishankov. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: Meal Class Test
    func testMealInitializationSucceds() {
        // Zero Rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highets Rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        // Zero Rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 5)
        XCTAssertNil(emptyStringMeal)
    }
}
