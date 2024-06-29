//
//  ViewController.swift
//  Currency Management App
//
//  Created by 김민수 on 7/11/22.
//


import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var output: UILabel!
    
    //Converts the input number


    
    
    //The final answer
    var finalAns: Double = 0

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }
    
    @IBAction func yenTapped(_ sender:Any){
        
        var userInputConv = Double(textInput.text!) ?? 0
        
        //Currency
        finalAns = userInputConv * 137.42
        
        var convStr = String(format: "%.2f",finalAns)
        
        convStr.append(" ¥")
        
        output.text = convStr
        
    }
    
    @IBAction func cadTapped(_ sender:Any){
        
        var userInputConv = Double(textInput.text!) ?? 0
        
        //Currency
        finalAns = userInputConv * 0.77
        
        var convStr = String(format: "%.2f",finalAns)
        
        convStr.append(" $")
        
        output.text = convStr
        
    }
    
    @IBAction func euroTapped(_ sender:Any){
        
        var userInputConv = Double(textInput.text!) ?? 0
        
        //Currency
        finalAns = userInputConv * 1.0
        
        var convStr = String(format: "%.2f",finalAns)
        
        convStr.append(" €")
        
        output.text = convStr
        
    }
    
    @IBAction func wonTapped(_ sender:Any){
        
        var userInputConv = Double(textInput.text!) ?? 0
        
        //Currency
        finalAns = userInputConv * 1310
        
        var convStr = String(format: "%.2f",finalAns)
        
        convStr.append(" ₩")
        
        output.text = convStr
        

        
    }
    
    @IBAction func yuanTapped(_ sender:Any){
        
        
        var userInputConv = Double(textInput.text!) ?? 0
        
        //Currency
        finalAns = userInputConv * 6.72
        
        var convStr = String(format: "%.2f", finalAns)
        
        convStr.append(" ¥")
        
        output.text = convStr


    }
    

    @IBAction func enterTapped(_ sender:Any){
        
  
        
        
        
    }
    
    
    /*
     * Second page
     */
    @IBAction func secYenTapped(_ sender:Any){
        
        if let url = URL(string: "https://www.xe.com/currencycharts/?from=USD&to=JPY") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        

        
    }
    
    @IBAction func secCadTapped(_ sender:Any){
        
        if let url = URL(string: "https://www.xe.com/currencycharts/?from=USD&to=CAD") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
    
    @IBAction func secYuanTapped(_ sender:Any){
        
        if let url = URL(string: "https://www.xe.com/currencycharts/?from=USD&to=CNY") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
    
    @IBAction func secWonTapped(_ sender:Any){
        
        if let url = URL(string: "https://www.xe.com/currencycharts/?from=USD&to=KRW") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        

        
    }
    
    @IBAction func secEuroTapped(_ sender:Any){
        
        if let url = URL(string: "https://www.xe.com/currencycharts/?from=USD&to=EUR") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
    
    
    
    /*
     * Third contact page
     */
    
    @IBAction func gitHubTapped(_ sender:Any){
        
        if let url = URL(string: "https://github.com/MinsooKim142") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
    
    @IBAction func linkedInTapped(_ sender:Any){
        
        if let url = URL(string: "https://www.linkedin.com/in/minsoo-kim-215149229/") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
    
    @IBAction func emailTapped(_ sender:Any){
        
        if let url: NSURL = NSURL(string: "mailto:kim.8210@osu.edu") {
            UIApplication.shared.canOpenURL((url as NSURL) as URL)
        }
        
    }
    
    
    
    
    
    
    
    //Gets rid of keyboard after tap
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    
    
    
    
    

    

}


