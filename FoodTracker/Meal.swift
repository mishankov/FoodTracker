//
//  Meal.swift
//  FoodTracker
//
//  Created by Денис on 21/01/2019.
//  Copyright © 2019 Denis Mishankov. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating>=0) && (rating<=5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
