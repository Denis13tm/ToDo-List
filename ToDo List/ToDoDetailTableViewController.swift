//
//  ToDoDetailTableViewController.swift
//  ToDo List
//
//  Created by 13 Denis on 08/01/2022.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var noteView: UITextView!
    
    //to hold given data
    var toDoItem: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameField.text = toDoItem
    }

    // MARK: - Actions
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    

}
