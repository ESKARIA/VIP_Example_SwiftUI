//
//  ListView.swift
//  TestVIPER
//
//  Created by Дмитрий Торопкин on 24.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    var presenter: ListPresenterProtocol!
    var router: DIResolver?
    
    @ObservedObject var model: ListViewModel
    
    var body: some View {
        
        NavigationView() {
            VStack() {
                List(model.lists) { list in
                    ListViewCell(list: list, router: self.router, color: self.model.textColor)
                }
                HStack() {
                    Button(action: {
                        self.presenter.addValue()
                    }) {
                        Text("Add new value")
                    }
                    Button(action: {
                        self.presenter.changeColor()
                    }) {
                        Text("Change text color")
                    }
                }
                
            }
            .navigationBarTitle("Список")
        }
    }
}

// MARK: - ListViewProtocol

extension ListView: ListViewProtocol { }

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ListViewModel()
        viewModel.lists = [ListModel(listTitle: "List 1"), ListModel(listTitle: "List 2")]
        return ListView(model: viewModel)
    }
}
