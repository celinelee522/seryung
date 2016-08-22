//
//  EditViewController.swift
//  ProtoUI
//
//  Created by Seryung Lee on 8/22/16.
//  Copyright © 2016 Seryung Lee. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var cashOrCard: UISegmentedControl!
    
    @IBOutlet weak var currency: UISegmentedControl!
 
    @IBOutlet weak var costText: UITextField!
    
 
    @IBOutlet weak var dateText: UITextField!
    
    @IBOutlet weak var numPeopleText: UITextField?
    
    @IBAction func saveButton(sender: AnyObject) {
    }
    
    // MARK : TextField Delegate
    
    
    func textFieldDidEndEditing(textField: UITextField) {
        let datePicker = UIDatePicker()
        textField.inputView = datePicker
        datePicker.addTarget(self, action: #selector(EditViewController.datePickerChanged(_:)), forControlEvents: .ValueChanged)
    }
    
    
    func datePickerChanged(sender: UIDatePicker) {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .LongStyle
        dateText.text = formatter.stringFromDate(sender.date) //string
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder() 
        return true
    }
    
    func closeKeyBoard() {
        self.view.endEditing(true)
    }
    
    // MARK : Touch event
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        closeKeyBoard()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateText.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}