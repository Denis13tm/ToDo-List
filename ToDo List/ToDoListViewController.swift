//
//  ViewController.swift
//  ToDo List
//
//  Created by 13 Denis on 08/01/2022.
//

import UIKit

class ToDoListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var toDoArray = ["Learn SWIFT 1", "Learn SWIFT 2", "Learn SWIFT 4", "Learn SWIFT 5", "Learn SWIFT 6", "Learn SWIFT 7"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //MARK: - Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail"{
            let destination = segue.destination as! ToDoDetailTableViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            destination.toDoItem = toDoArray[selectedIndexPath.row]
        }
    }


}

extension ToDoListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        toDoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
    
}

