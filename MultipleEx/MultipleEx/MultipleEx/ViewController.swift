//
//  ViewController.swift
//  MultipleEx
//
//  Created by Allen Barnes on 4/11/20.
//  Copyright © 2020 Allen Barnes. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()

class ViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var theSwitch: UILabel!
    
    
    @IBOutlet weak var theSlider: UILabel!
    
    
    @IBOutlet weak var thePicker: UILabel!
    
    
    @IBOutlet weak var myName: UITextField!
    
    
    @IBOutlet weak var navView: UIView!
    //actions
    
    @IBAction func myName(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    
    @IBAction func clickMenu(_ sender: Any) {
        if(navView.isHidden) {
                          navView.isHidden = false
                      }
                      else {
                          navView.isHidden = true
                      }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        override func viewWillAppear(_ animated: Bool){
            navView.isHidden = true
        theSwitch.text = "Switch: \(global.switchVar)"
            theSlider.text = "Slider: \(global.sliderVar)"
            thePicker.text = "Picker: \(global.pickerVar)"
    }
        // Do any additional setup after loading the view.
    


}

