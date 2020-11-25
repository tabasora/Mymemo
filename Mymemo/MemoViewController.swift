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
        //self.saveButton.isEnabled = false
        if let memo = self.memo{
            self.memoTextField.text = memo
            self.navigationItem.title = "Edit Memo"
        }
        self.updateSavaButtonState()
    }
    
    private func updateSavaButtonState(){
        let memo = self.memoTextField.text ?? ""
        self.saveButton.isEnabled = !memo.isEmpty
    }
    
    @IBAction func memoTextFieldChanged(_ sender: Any) {
        self.updateSavaButtonState()
    }
    override  func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
            
        }
        
    @IBAction func cancel(_ sender: Any) {
        if self.presentingViewController is
            UINavigationController{
            self.dismiss(animated: true, completion: nil)
        }else{
            self.navigationController?.popViewController(animated: true)
         }
        }
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
        guard let button = sender as? UIBarButtonItem,button === self.saveButton else{
            return
            }
            self.memo = self.memoTextField.text ?? ""
        }
        
            

        
   

}
