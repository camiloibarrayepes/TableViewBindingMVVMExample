//
//  TodoItemTableViewCell.swift
//  DataBindingMVVMExample
//
//  Created by camilo andres ibarra yepes on 30/10/19.
//  Copyright © 2019 camilo andres ibarra yepes. All rights reserved.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {

    @IBOutlet weak var txtIndex: UILabel!
    @IBOutlet weak var txtTodoItem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /*!
     * @discussion This function is to configure your cell using view model
     * @params viewModel
     * @return Void
     */
    
    func configure(withViewModel viewModel: TodoItemPresentable) -> (Void) {
        
        txtIndex.text = viewModel.id!
        txtTodoItem.text = viewModel.textValue!
    }
    
}
