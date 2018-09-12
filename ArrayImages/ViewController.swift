//
//  ViewController.swift
//  ArrayImages
//
//  Created by Saeed Rahman on 11/9/2018.
//  Copyright © 2018 Saeed Rahman. All rights reserved.
//
//  Extension Activies
//  1. What happens when you get to the last element in the array? How would we correct this?
//  2. Based on what you have learned about random numbers, how can you iterate through the array randomly?

import UIKit

class ViewController: UIViewController {
    
    // Declare an array which includes 13 elements (0-13)
    var cardArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    
    // This variable indicates the starting position within the array
    var position = 0
    
    // Outlet to access the properties of the UIImage object
    @IBOutlet weak var cardImageView: UIImageView!
    
    // Button action for the UIButton object. Everytime the button is clicked
    // the image is changed based on the value of the the position variable, which
    // is relative to the position of the image in the cardArray. The position
    // variable is then incremented by 1 (+=1)
    @IBAction func dealButtonAction(_ sender: Any) {

        cardImageView.image = UIImage(named: String(cardArray[position]))
        position += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

