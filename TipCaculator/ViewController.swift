//
//  ViewController.swift
//  TipCaculator
//
//  Created by healer on 5/30/17.
//  Copyright © 2017 healer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TipLabel: UILabel!
    @IBOutlet var TipTextField: UITextField!
    @IBOutlet var TotalLabel: UILabel!
    var FilePath : String{
        let manager = FileManager.default
        let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
        return (url!.appendingPathComponent("Data").path)
    }
    var H : History?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //let defaults = UserDefaults.standard
        //let tip = defaults.float(forKey: "Tip")
        //calculator.tipPercentage = tip
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        TipTextField.text = ""
        TotalLabel.text = " "
        if(Tip.selectedTip){
            TipLabel.text = String(Tip.tip).appending(" %")
        }
    }

    func saveData(){
        NSKeyedArchiver.archiveRootObject(History.Histories, toFile: FilePath)
    }
    
     func loadData(){
        if let ourData = NSKeyedUnarchiver.unarchiveObject(withFile: FilePath) as? [History] {
            History.Histories = ourData
        }
    }
    
    @IBAction func TotalTipButton(_ sender: Any) {
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyy | HH:mm:ss"
        let today = formatter.string(from: date)
        
        if(TipTextField.text != "" && TipLabel.text != " "){
            TotalLabel.text = String(Double(TipTextField.text!)! * (Double(Tip.tip) * 0.01)).appending(" VND")
            let CaculatorTip = TipTextField.text! + " * " + String(Tip.tip) + " %  = "+TotalLabel.text!
            let Time =  String(today)
            H = History(TotalTip: CaculatorTip, Time: Time!)
            History.Histories.append(H!)
        }
        
    }
    @IBAction func ResetButton(_ sender: Any) {
        TipTextField.text = ""
        TotalLabel.text = " "
    }

}

