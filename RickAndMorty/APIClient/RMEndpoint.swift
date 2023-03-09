//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Liron Ezer on 09/03/2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    case character  // "character"
    case location   // "location"
    case episode    // "episode"
}
