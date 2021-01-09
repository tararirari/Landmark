//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ryotaro Takahashi on 2020/12/06.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    
    var body: some View {
        HStack {
            Image("turtlerock")
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: Landmark(name: "Tokyo Tech", category: "Featured", city: "Twentynine Palms", state: "Meguro", id: 1000, park: "Oookayama National Park", coordinates: Coordinates(longitude: 139.6813415, latitude: 35.6051229), imageName: "titech"))
    }
}

