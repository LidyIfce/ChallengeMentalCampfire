//
//  ConfiguracaoTableViewController.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 19/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class ConfiguracaoTableViewController: UITableViewController {
    
    
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    var datePicker = UIDatePicker()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        createDatePicker()
       
    }
    @IBAction func activeSound(_ sender: UISwitch) {
        let message = sender.isOn ?
            true : false
        UserDefaults.standard.set(message, forKey: "activeSound")
    }
    
    
    @IBAction func changeVolume(_ sender: UISlider) {
        UserDefaults.standard.set (sender.value, forKey: "changeVolume")
    }
    
    
    func createDatePicker(){
           textField.textAlignment = .left
            textField.adjustsFontSizeToFitWidth = true
           textField.translatesAutoresizingMaskIntoConstraints = false
           textField.placeholder = "Click aqui para adicionar"
           
           // DatePicker
           self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: UIScreen.main.bounds.height - 200.0, width: UIScreen.main.bounds.width, height: 200))
           self.datePicker.backgroundColor = UIColor.white
           self.datePicker.datePickerMode = UIDatePicker.Mode.time
           datePicker.center = view.center
           
           // ToolBar
           let toolBar = UIToolbar()
           toolBar.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - 240.0, width: UIScreen.main.bounds.width, height: 44.0)
           toolBar.barStyle = .default
           toolBar.isTranslucent = true
           toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
           toolBar.sizeToFit()
           
           //Button
           let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClick))
           let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
           let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cancelClick))
           toolBar.setItems([cancelButton, spaceButton, doneButton], animated: true)
           
           textField.inputAccessoryView = toolBar
           textField.inputView = datePicker
           
       }
    
        @objc func doneClick(){
             let formatter = DateFormatter()
             formatter.dateStyle = .none
             formatter.timeStyle = .short
             self.view.endEditing(true)
             
             textField.text = formatter.string(from: datePicker.date)
         }
         
         @objc func cancelClick() {
             self.view.endEditing(true)
             
         }
           
   
}
