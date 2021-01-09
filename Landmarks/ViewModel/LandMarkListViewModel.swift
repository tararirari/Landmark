//
//  LandMarkListViewModel.swift
//  Landmarks
//
//  Created by Ryotaro Takahashi on 2021/01/09.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import Combine


class LandMarkListViewModel: ObservableObject {
    @Published var landmarks: [Landmark] = [
    Landmark(name: "Tokyo Tech", category: "Featured", city: "Twentynine Palms", state: "Meguro", id: 1000, park: "Oookayama National Park", coordinates: Coordinates(longitude: 139.6813415, latitude: 35.6051229), imageName: "titech"),
    Landmark(name: "Turtle Rock", category: "Featured", city: "Twentynine Palms", state: "California", id: 1001, park: "Joshua Tree National Park", coordinates: Coordinates(longitude: -116.166868, latitude: 34.011286), imageName: "turtlerock"),
    Landmark(name: "Silver Salmon Creek", category: "Lakes", city: "Port Alsworth", state: "Alaska", id: 1002, park: "Lake Clark National Park and Preserve", coordinates: Coordinates(longitude: -152.665167, latitude: 59.980167), imageName: "silversalmoncreek"),
    Landmark(name: "Chilkoot Trail", category: "Rivers", city: "Skagway", state: "Alaska", id: 1003, park: "Klondike Gold Rush National Historical Park", coordinates: Coordinates(longitude: -135.334571, latitude: 59.560551), imageName: "chilkoottrail")
    ]
    var cancellable: AnyCancellable? = nil
    func appear() {
        cancellable = ApiClient().send(url: URL(string: "https://titechappproject-swiftui-tutorial.s3-ap-northeast-1.amazonaws.com/landmarkData.json")!)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
            }, receiveValue: { [weak self](jsonData) in
        //        print(String(data: jsonData, encoding: .utf8))
                let decoder = JSONDecoder()

                do {
                    let landmarks = try decoder.decode([Landmark].self, from: jsonData)
                    self?.landmarks = landmarks
                    
                } catch {
                    print(error)
                }
            })
    }
    

}
