//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
    
    @IBOutlet weak var view7: UIView!
    
    
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var label6: UILabel!
    
    var count = 1
    
    @IBAction func dice(sender: AnyObject) {
        let x = randomDiceRoll()
        print("number is \(x)")
        rearrangeDie(x)
        showNumber(count, post: x)
        count += 1
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true
        
        label1.hidden = true
        label2.hidden = true
        label3.hidden = true
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
        
    }
    
    
    func rearrangeDie (number : Int) {
        switch number {
        case 1:
            view4.hidden = false
            view1.hidden = true
            view2.hidden = true
            view3.hidden = true
            view5.hidden = true
            view6.hidden = true
            view7.hidden = true
        case 2:
            view3.hidden = false
            view5.hidden = false
            view1.hidden = true
            view2.hidden = true
            view4.hidden = true
            view6.hidden = true
            view7.hidden = true
        case 3:
            view1.hidden = false
            view4.hidden = false
            view7.hidden = false
            view2.hidden = true
            view3.hidden = true
            view5.hidden = true
            view6.hidden = true
        case 4:
            view1.hidden = false
            view2.hidden = false
            view6.hidden = false
            view7.hidden = false
            view3.hidden = true
            view4.hidden = true
            view5.hidden = true
        case 5:
            view1.hidden = false
            view2.hidden = false
            view3.hidden = true
            view4.hidden = false
            view5.hidden = true
            view6.hidden = false
            view7.hidden = false
        case 6:
            view1.hidden = false
            view2.hidden = false
            view3.hidden = false
            view4.hidden = true
            view5.hidden = false
            view6.hidden = false
            view7.hidden = false
            
        default:
            print ("invalid")
            
        }
    }
    
    
    func showNumber(counter: Int, post: Int) {
        switch counter {
        case 1:
            label1.hidden = false
            label2.hidden = true
            label3.hidden = true
            label4.hidden = true
            label5.hidden = true
            label6.hidden = true
            
            label1.text = "\(post)"
            
        case 2:
            label1.hidden = false
            label2.hidden = false
            label3.hidden = true
            label4.hidden = true
            label5.hidden = true
            label6.hidden = true
            
            label2.text = "\(post)"
        case 3:
            label1.hidden = false
            label2.hidden = false
            label3.hidden = false
            label4.hidden = true
            label5.hidden = true
            label6.hidden = true
            
            label3.text = "\(post)"
            
        case 4:
            label1.hidden = false
            label2.hidden = false
            label3.hidden = false
            label4.hidden = false
            label5.hidden = true
            label6.hidden = true
            
            label4.text = "\(post)"
            
        case 5:
            label1.hidden = false
            label2.hidden = false
            label3.hidden = false
            label4.hidden = false
            label5.hidden = false
            label6.hidden = true
            
            label5.text = "\(post)"
        case 6:
            label1.hidden = false
            label2.hidden = false
            label3.hidden = false
            label4.hidden = false
            label5.hidden = false
            label6.hidden = false
            
            label6.text = "\(post)"
        default:
            print ("no mas")
        }
        
        
    }
    
}

//declare a variable that counts up to 6
