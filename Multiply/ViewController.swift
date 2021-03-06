//
//  ViewController.swift
//  Multiply
//
//  Created by Lujan, Andrew - Student on 2/7/22.
//

import UIKit

class ViewController: UIViewController {

    var addition = false
    var subtraction = false
    var division = false
    var multiplication = false
    
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    
    @IBOutlet weak var productLabel: UILabel!
    
    @IBOutlet weak var operatorLabel: UILabel!
    
    @IBOutlet weak var marioKartImage: UIImageView!
    
    @IBOutlet weak var funnyImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        firstNumber.text = ""
        secondNumber.text = ""
        marioKartImage.image = nil
        funnyImage.image = nil
        productLabel.text = ""
        operatorLabel.text = ""
    }
    
    @IBAction func addButton(_ sender: Any) {
        if subtraction == true || division == true || multiplication == true {
                addition = true
                subtraction = false
                division = false
                multiplication = false
                operatorLabel.text = "+"
        }
        else {
        addition = true
            operatorLabel.text = "+"
    }
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        if addition == true || division == true || multiplication == true {
            subtraction = true
            addition = false
            division = false
            multiplication = false
            operatorLabel.text = "-"
        }
        else {
        subtraction = true
            operatorLabel.text = "-"
    }
    }
    
    @IBAction func divideButton(_ sender: Any) {
        if addition == true || subtraction == true || multiplication == true {
            division = true
            addition = false
            multiplication = false
            subtraction = false
            operatorLabel.text = "/"
        }
        else {
            operatorLabel.text = "/"
        division = true
    }
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        if division == true || addition == true || subtraction == true {
            multiplication = true
            division = false
            subtraction = false
            addition = false
            operatorLabel.text = "*"
        }
        else {
        multiplication = true
            operatorLabel.text = "*"
    }
    }
    
    
    
    

    @IBAction func calculate(_ sender: Any) {
        let firstValue = firstNumber.text
        let secondValue = secondNumber.text
        if multiplication == true {
        let product = Double(firstValue!)! * Double(secondValue!)!
        productLabel.text = "\(product)"
        firstNumber.endEditing(true)
        secondNumber.endEditing(true)
        if product == 64 {
            marioKartImage.image = UIImage(named: "dry_bones")
        }
     
        if product.truncatingRemainder(dividingBy: 2) == 0 {
                funnyImage.image = UIImage(named: "capybara-square-1")
            }
        else {
            funnyImage.image = UIImage(named: "capybaru")
            }
        }
        if addition == true {
            let sum = Double(firstValue!)! + Double(secondValue!)!
            productLabel.text = "\(sum)"
        }
        if subtraction == true {
            let difference = Double(firstValue!)! - Double(secondValue!)!
            productLabel.text = "\(difference)"
        }
        if division == true {
            let quotient = Double(firstValue!)! / Double(secondValue!)!
            productLabel.text = "\(quotient)"
        }
      //  let tapGesture = UITapGestureRecognizer(target: self, action: "normalTap:")
    // these commented lines were here when i was trying to use a tap gesture recognizer. I realized that I didnt need one because the button is a tap gesture recognizer and it was messing things up but im leaving them here anyway
    }
    
    //func normalTap(sender: UIGestureRecognizer) {
       // let recognizer: UIGestureRecognizer = sender
      //  firstNumber.endEditing(true)
      //  secondNumber.endEditing(true)
    }
    
    
    


