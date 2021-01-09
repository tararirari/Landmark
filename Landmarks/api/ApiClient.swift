//
//  ApiClient.swift
//  Landmarks
//
//  Created by Ryotaro Takahashi on 2021/01/09.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import Combine
struct ApiClient {
    func send(url: URL) -> AnyPublisher<Data, URLError> {
        URLSession.shared
            .dataTaskPublisher(for: url)
            .map { $0.data }
            .eraseToAnyPublisher()
    }
}
