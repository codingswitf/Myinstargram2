//
//  RegesterViewController.swift
//  Myinstargram
//
//  Created by Mac HD on 3/18/2559 BE.
//  Copyright © 2559 Mac HD. All rights reserved.
//

import UIKit

class RegesterViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ok(sender: AnyObject) {
      
        if(username.text != nil && password.text != nil && email.text != nil){
        let ku = Kumulos()
        ku.createUserWithUsername(username.text, andPassword: password.text, andEmail: email.text)
        }
    }
   
    /*
    @IBOutlet weak var cancel: UIButton!
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
