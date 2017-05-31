//
//  SettingViewController.swift
//  TipCaculator
//
//  Created by healer on 5/31/17.
//  Copyright © 2017 healer. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var pickerLabel: UILabel!
    @IBOutlet var pickerView: UIPickerView!
    
    var Tips = ["5","10","15"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerView.dataSource = self
        pickerView.delegate = self
       pickerLabel.text = Tips[0]
        Tip.tip = Int(Tips[0])!
        Tip.selectedTip  = true
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Tips.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Tips[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = Tips[row]
        Tip.tip = Int(Tips[row])!
        Tip.selectedTip  = true
    }

}
