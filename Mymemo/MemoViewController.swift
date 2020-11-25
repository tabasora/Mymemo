//
//  MemoViewController.swift
//  Mymemo
//
//  Created by Macbook on 2020/11/24.
//  Copyright © 2020年 Macbook. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    
    var memo: String?

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.saveButton.isEnabled = false
        if let memo = self.memo{
            self.memoTextField.text = memo
        }
    }
    
    @IBAction func memoTextFieldChanged(_ sender: Any) {
        let memo = self.memoTextField.text ?? ""
        self.saveButton.isEnabled = !memo.isEmpty
    }
    override  func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
            
        }
        
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
        guard let button = sender as? UIBarButtonItem,button === self.saveButton else{
            return
            }
            self.memo = self.memoTextField.text ?? ""
        }
        
            

        
   

}
