//
//  ViewController.swift
//  MentorBook
//
//  Created by Mio Sato on 2019/08/25.
//  Copyright © 2019 Mio Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた" , imageName: "nagata.jpg" , course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう" , imageName: "ryo.jpg" , course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ" , imageName: "taithi.jpg" , course: "WebS,WebD"))
        
        setUI()
    }
    
    @IBAction func mae() {
        index = index - 1
        setUI()
    }
    
    @IBAction func tugi() {
        index = index + 1
        setUI()
    }
    
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }


}

