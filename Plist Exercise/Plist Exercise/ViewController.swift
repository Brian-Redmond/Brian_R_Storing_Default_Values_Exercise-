//
//  ViewController.swift
//  Plist Exercise
//
//  Created by Brian Redmond on 8/11/20.
//  Copyright © 2020 Brian Redmond. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func SaveButton( sender:Any) {
        UserDefaults.standard.set(SerialNumber.text, forKey: "Text")
        UserDefaults.standard.set(Switch.isOn, forKey:"Switch")
        UserDefaults.standard.set(Slider.value, forKey:"Slider")
    }
    @IBAction func LoadButton( sender: Any) {
        Switch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        Slider.value = UserDefaults.standard.float(forKey: "Slider")
        SerialNumber.text = UserDefaults.standard.string(forKey:"Text")
    }
    @IBAction func DeleteButton( sender: Any ){
        Switch.isOn = true
        Slider.value = 0.5
        SerialNumber.text = ""
    }
    @IBOutlet var SerialNumber: UITextField!
    @IBOutlet var Slider: UISlider!
    @IBOutlet var Switch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

