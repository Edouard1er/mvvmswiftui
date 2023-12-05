//
//  TodoViewModel.swift
//  mvvmswiftui
//
//  Created by EDOUARD CHEVENSLOVE on 05/12/2023.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = [
        Todo(title: "Acheter du lait", isDone: false),
        Todo(title: "Aller à la salle de sport", isDone: true),
        Todo(title: "Lire un livre", isDone: false)
    ]
}
