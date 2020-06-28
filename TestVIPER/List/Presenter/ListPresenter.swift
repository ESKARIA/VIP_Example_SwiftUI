//
//  ListPresenter.swift
//  TestVIPER
//
//  Created by Дмитрий Торопкин on 24.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation
import SwiftUI

struct ListPresenter {
    
    @ObservedObject var model: ListViewModel
    
    var interactor: ListIntercatorProtocol
    var view: ListViewProtocol
    
    init(view: ListViewProtocol, interactor: ListIntercator, model: ListViewModel) {
        self.interactor = interactor
        self.view = view
        self.model = model
    }
    
}

// MARK: - ListPresenterProtocol

extension ListPresenter: ListPresenterProtocol {
    
    func addValue() {
        interactor.addValue { (newValue) in
            model.lists.append(newValue)
        }
    }
    
    func changeColor() {
        interactor.generateColor { (color) in
            model.textColor = color
        }
    }
}
