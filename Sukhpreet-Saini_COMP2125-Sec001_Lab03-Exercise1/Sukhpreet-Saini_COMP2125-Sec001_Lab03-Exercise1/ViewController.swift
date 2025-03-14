//
//  ViewController.swift
//  Sukhpreet-Saini_COMP2125-Sec001_Lab03-Exercise1
//
//  Created by Sukhpreet Saini on 2025-03-14.
//

import UIKit

class ViewController: UIViewController {
    //Textfield for username
    @IBOutlet weak var txtUserName: UITextField!
    
    //Textfield for password
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //Action function when login button is clicked
    @IBAction func loginBtn(_ sender: Any) {
        //To instantiate ProjectViewController from the storyboard
        let view = self.storyboard?.instantiateViewController(withIdentifier: "ProjectViewController") as! ProjectViewController
        //To pass username to ProjectViewController
        view.username = txtUserName.text!
        //To push ProjectViewController onto the navigation stack
        self.navigationController?
            .pushViewController(view, animated: true)
    }
}
