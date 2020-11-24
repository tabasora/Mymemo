//
//  MemoViewController.swift
//  Mymemo
//
//  Created by Macbook on 2020/11/24.
//  Copyright © 2020年 Macbook. All rights reserved.
//

import UIKit

class MemoViewController: UITableViewController {
    
    var memo: String?

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
     override  func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
            
        }
        
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
        guard let button = sender as? UIBarButtonItem,button === self.saveButton else{
            return
            }
            self.memo = self.memoTextField.text ?? ""
        }
        
            

        
   

}
