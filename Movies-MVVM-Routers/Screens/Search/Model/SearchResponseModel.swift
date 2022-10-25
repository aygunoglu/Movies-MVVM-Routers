//
//  SearchResponseModel.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

struct SearchResponseModel: Codable {
    let results: [SearchItem]
    let totalResults, response: String

    enum CodingKeys: String, CodingKey {
        case results = "Search"
        case totalResults
        case response = "Response"
    }
}
