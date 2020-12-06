//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryotaro Takahashi on 2020/12/06.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: DetailView(),
                    label: {
                        LandmarkRow()
                    })
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
