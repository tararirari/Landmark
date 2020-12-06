//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ryotaro Takahashi on 2020/12/06.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var body: some View {
        HStack {
            Image("turtlerock")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Turtle Rock")
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow()
    }
}

