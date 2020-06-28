//
//  ListProtocols.swift
//  TestVIPER
//
//  Created by Дмитрий Торопкин on 25.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation
import SwiftUI

protocol ListViewProtocol { }

protocol ListIntercatorProtocol {
    func addValue(completion: (ListModel) -> Void)
    func generateColor(completion: (Color) -> Void)
}

protocol ListPresenterProtocol {
    func addValue()
    func changeColor()
}
