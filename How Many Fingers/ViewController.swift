//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Athena on 1/16/18.
//  Copyright © 2018 Sheena Elveus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    
    @IBAction func guessButton(_ sender: Any) {
        let random = arc4random_uniform(6)
        
        if let guess = textField.text{
            
            if Int(guess) == Int(random){
                answer.text = "You're right!"
            }else{
                answer.text = "Wrong! It was a \(random)."
            }
        }
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

