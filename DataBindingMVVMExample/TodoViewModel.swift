//
//  TodoViewModel.swift
//  DataBindingMVVMExample
//
//  Created by camilo andres ibarra yepes on 29/10/19.
//  Copyright © 2019 camilo andres ibarra yepes. All rights reserved.
//

protocol TodoItemPresentable {
    var id: String? { get }
    var textValue: String? { get }
}

struct TodoItemViewModel: TodoItemPresentable {
    var id: String? = "0"
    var textValue: String?
}

protocol TodoItemViewDelegate {
    func onTodoItemAdded() -> ()
}

struct TodoViewModel  {
    
    init() {
        let item1 = TodoItemViewModel(id: "1", textValue: "Wash car")
        let item2 = TodoItemViewModel(id: "2", textValue: "Buy Groseries")
        let item3 = TodoItemViewModel(id: "3", textValue: "Buy Fruits")
        
        items.append(contentsOf: [item1, item2, item3]) 
    }
    
    var newTodoItem: String?
    var items: [TodoItemPresentable] = []
}

extension TodoViewModel: TodoItemViewDelegate {
    func onTodoItemAdded() {
        
    }
}
