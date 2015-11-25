//
//  Restaurant.swift
//  FoodPin
//
//  Created by jay on 15/11/23.
//  Copyright © 2015年 jay. All rights reserved.
//

import Foundation

class Restaurant {
    
    var name:String?
    
    var type:String?
    
    var location:String?
    
    var image:String?
    
    var isVisited:Bool=false
    
    var phoneNumber:String
    
    var rating = "rating"
    
    init(name:String, type:String, location:String, phoneNumber:String,image:String, isVisited:Bool) {
        
        self.name = name;
        
        self.type = type;
        
        self.location = location;
        
        self.image = image;
        
        self.isVisited = isVisited;
        
        self.phoneNumber = phoneNumber
    }
}