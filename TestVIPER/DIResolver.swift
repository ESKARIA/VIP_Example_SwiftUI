//
//  DIResolver.swift
//  TestVIPER
//
//  Created by Дмитрий Торопкин on 25.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation
import SwiftUI

final class DIResolver {
    
    func getListView() -> some View {
        let viewModel = ListViewModel()
        var view = ListView(router: self, model: viewModel)
        let interactor = ListIntercator()
        let presenter = ListPresenter(view: view, interactor: interactor, model: viewModel)
        view.presenter = presenter
        return view
    }
    
    func getDetailList(with list: ListModel) -> some View {
        //здесь должен инититься экран как getListView
        return Text("id листа равен \(list.listTitle)")
    }
}
