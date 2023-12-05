//
//  ContentView.swift
//  mvvmswiftui
//
//  Created by EDOUARD CHEVENSLOVE on 05/12/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = TodoViewModel()

    var body: some View {
        NavigationView {
            TodoListView(viewModel: viewModel)
                .navigationBarTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

