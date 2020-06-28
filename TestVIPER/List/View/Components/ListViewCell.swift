//
//  ListViewCell.swift
//  TestVIPER
//
//  Created by Дмитрий Торопкин on 28.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import SwiftUI


struct ListViewCell: View {
    
    var list: ListModel
    var router: DIResolver?
    var color: Color
    
    var body: some View {
        NavigationLink(destination: self.router?.getDetailList(with: list)) {
            Text(list.listTitle)
                .foregroundColor(color)
        }
    }
}

struct ListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ListViewCell(list: ListModel(listTitle: "Test"), color: .black)
    }
}
