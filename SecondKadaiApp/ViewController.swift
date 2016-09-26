//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Keiko Arita on 2016/09/25.
//  Copyright © 2016年 Keiko.Kurokawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var inputName: UITextField!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // segueから遷移先のResultViewControllerを取得
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
        
        // 遷移先のResultViewControllerで宣言しているnameに、UITextFieldの値を代入して渡す        
        resultViewController.name = self.inputName.text
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    
    }


}

