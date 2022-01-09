//
//  ListTableViewCell.swift
//  ToDo List
//
//  Created by 13 Denis on 08/01/2022.
//

import UIKit

protocol ListTableViewCellDelegate: AnyObject {
    func checkBoxToggle(sender: ListTableViewCell)
}

class ListTableViewCell: UITableViewCell {
    
    weak var delegate: ListTableViewCellDelegate?

    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cellBackgrounUIView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellBackgrounUIView.layer.cornerRadius = 13.0
    }
    
    var toDoItem: ToDoItem! {
        didSet{
            nameLabel.text = toDoItem.name
            checkBoxButton.isSelected = toDoItem.completed
        }
    }
    
    @IBAction func checkToggled(_ sender: UIButton) {
        delegate?.checkBoxToggle(sender: self)
    }
    
}
