//
//  TodoListView.swift
//  mvvmswiftui
//
//  Created by EDOUARD CHEVENSLOVE on 05/12/2023.
//

import SwiftUI

struct TodoListView: View {
    @ObservedObject var viewModel: TodoViewModel

    var body: some View {
        List {
            ForEach(viewModel.todos.indices, id: \.self) { index in
                TodoRow(todo: self.$viewModel.todos[index])
            }
        }
    }
}

struct TodoRow: View {
    @Binding var todo: Todo

    var body: some View {
        HStack {
            Text(todo.title)
            Spacer()
            Image(systemName: todo.isDone ? "checkmark.square" : "square")
                .onTapGesture {
                    self.todo.isDone.toggle()
                }
        }
    }
}

