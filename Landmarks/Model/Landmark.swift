//
//  Landmark.swift
//  Landmarks
//
//  Created by Ryotaro Takahashi on 2021/01/09.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

struct Landmark: Decodable, Identifiable {
    let name: String
    let category: String
    let city: String
    let state: String
    let id: Int
    let park: String
    let coordinates: Coordinates
    let imageName: String
}

struct Coordinates: Decodable {
    let longitude: Float
    let latitude: Float
}
