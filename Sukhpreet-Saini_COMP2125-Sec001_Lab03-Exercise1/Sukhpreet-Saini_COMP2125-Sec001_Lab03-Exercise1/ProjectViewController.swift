//
//  ProjectViewController.swift
//  Sukhpreet-Saini_COMP2125-Sec001_Lab03-Exercise1
//
//  Created by Sukhpreet Saini on 2025-03-14.
//

import UIKit

class ProjectViewController: UIViewController
{

    //Textfield for project name
    @IBOutlet weak var projectName: UITextField!
    
    //Textfield for project duration
    @IBOutlet weak var projectDuration: UITextField!
    
    //Textfield for project location
    @IBOutlet weak var projectLocation: UITextField!
    
    //TextArea for text view
    @IBOutlet weak var txtView: UITextView!
    
    //variable to store username received from ViewController
    var username = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
      
    }
    
    //Action function when submit button is clicked
    @IBAction func projectSubmitBtn(_ sender: Any)
    {
        //Display username and project name in text area
        txtView.text = "Username:\(username)\n Project Name: \(projectName.text!)"
    }
}
