//
//  ListInteractor.swift
//  TestVIPER
//
//  Created by Дмитрий Торопкин on 24.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation
import SwiftUI

struct ListIntercator { }

// MARK: - ListIntercatorProtocol

extension ListIntercator: ListIntercatorProtocol {
    
    func addValue(completion: (ListModel) -> Void) {
        let model = ListModel(listTitle: UUID().uuidString)
        completion(model)
    }
    
    func generateColor(completion: (Color) -> Void) {
        let color = Color(red: Double.random(in: 0...1),
                          green: Double.random(in: 0...1),
                          blue: Double.random(in: 0...1))
        completion(color)
    }
}
