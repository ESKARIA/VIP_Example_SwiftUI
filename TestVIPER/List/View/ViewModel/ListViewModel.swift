//
//  ListViewModel.swift
//  TestVIPER
//
//  Created by Дмитрий Торопкин on 24.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ListViewModel: ObservableObject {
    
    @Published var textColor: Color = .black
    @Published var lists = [ListModel]()
    @Published var error: Error?
}
