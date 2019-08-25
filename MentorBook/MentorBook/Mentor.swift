//
//  Mentor.swift
//  MentorBook
//
//  Created by Mio Sato on 2019/08/25.
//  Copyright © 2019 Mio Sato. All rights reserved.
//

import  UIKit

class Mentor{
    
    var mentorArray: [Mentor] = []
    
    
    var name: String!
    var course: String!
    var imageName: String!
    
    init (name:String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
    
}
