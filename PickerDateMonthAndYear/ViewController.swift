//
//  ViewController.swift
//  PickerDateMonthAndYear
//
//  Created by Tran Duc Anh on 8/29/19.
//  Copyright © 2019 Tran Duc Anh. All rights reserved.
//

import UIKit
import MonthYearPicker

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myView: UIView!
    var pickerView = MonthYearPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView = MonthYearPickerView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: myView.frame.width, height: myView.frame.height)))
        myView.addSubview(pickerView)
        
    }
    
    @objc func dateChanged(_ picker: MonthYearPickerView) {
        print("date changed: \(picker.date)")
    }
    
    @IBAction func clickToChangeMonth(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM/y"
        myLabel.text = dateFormatter.string(from: pickerView.date)
        pickerView.addTarget(self, action: #selector(dateChanged(_:)), for: .valueChanged)
    }
    
}

