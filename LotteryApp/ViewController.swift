//
//  ViewController.swift
//  LotteryApp
//
//  Created by 은서우 on 2024/01/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var lottoPickerView: UIPickerView!
    let manager = LotteryAPIManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
    }
    
    func configureTableView(){
        lottoPickerView.delegate = self
    }

}



extension ViewController: UIPickerViewDelegate {
    
}
