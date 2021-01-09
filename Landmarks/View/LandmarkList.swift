//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryotaro Takahashi on 2020/12/06.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @ObservedObject var viewModel = LandMarkListViewModel()
    var body: some View {
        NavigationView {
//            List {
//                NavigationLink(
//                    destination: DetailView(),
//                    label: {
//                        LandmarkRow()
//                    })
//            }
            List (viewModel.landmarks, rowContent: { (landmark) in
                LandmarkRow(landmark: landmark)
            })
            .navigationBarTitle(Text("Landmarks"))
        }.onAppear(perform: {
            viewModel.appear()
        })
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
