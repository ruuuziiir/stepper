//
//  ViewController.swift
//  stepper
//
//  Created by 7 on 2020/12/16.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var singleNum: UILabel!
    @IBOutlet weak var singleOutlet: UIStepper!
    
    @IBOutlet weak var doubleNum: UILabel!
    @IBOutlet weak var doubleOutlet: UIStepper!
    
    @IBOutlet weak var tripleNum: UILabel!
    @IBOutlet weak var tripleOutlet: UIStepper!
    
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var egg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var singleStep = 0
    var doubleStep = 0
    var tripleStep = 0
    var sum = 0

    
    @IBAction func singleStepper(_ sender: UIStepper) {
        singleNum.text = "\(Int(sender.value))"
        singleStep = Int(sender.value)
    }
    
    @IBAction func doubleStepper(_ sender: UIStepper) {
        doubleNum.text = "\(Int(sender.value))"
        doubleStep = Int(sender.value)
    }
    
    @IBAction func tripleStepper(_ sender: UIStepper) {
        tripleNum.text = "\(Int(sender.value))"
        tripleStep = Int(sender.value)
    }
    
    
    @IBAction func addExp(_ sender: Any) {

        sum = singleStep * 10 + doubleStep * 20 + tripleStep * 30
            
        if 100 < sum && sum <= 250 {
            egg.image = UIImage(named: "chick")
            status.text = "Status: Chick"
        }
        
        else if 250 < sum {
            egg.image = UIImage(named: "turkey")
            status.text = "Status: Turkey"
            
        }
    }
    
    @IBAction func restart(_ sender: Any) {
        
        egg.image = UIImage(named: "egg")
        status.text = "Status: Egg"
        
        singleOutlet.value = 0
        singleNum.text = "0"
        singleStep = 0
        
        doubleOutlet.value = 0
        doubleNum.text = "0"
        doubleStep = 0
        
        tripleOutlet.value = 0
        tripleNum.text = "0"
        tripleStep = 0

    }
    

    
}

