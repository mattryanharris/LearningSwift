//
//  ViewController.swift
//  Counter
//
//  Created by Matthew Harris on 11/7/16.
//  Copyright © 2016 Matthew Harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        longPressGesture()
        
    }
    @IBOutlet weak var button: UIButton!
    
    func longPressAction(myLongPress:UILongPressGestureRecognizer) {
        count += 1
        counter.text = String(count)
    }
    
    func longPressGesture() {
        let lpg = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPressAction))
        lpg.minimumPressDuration = 0.3
        
        button.addGestureRecognizer(lpg)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var counter: UILabel!
    var count: Int = 0
    @IBAction func incrementer(_ sender: Any) {
        count += 1
        counter.text = String(count)
    }
   
    
   
    @IBAction func reset(_ sender: Any) {
        count = 0
        counter.text = String(count)
    }
    
}

