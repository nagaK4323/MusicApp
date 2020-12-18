//
//  ArtistModel.swift
//  MusicApp
//
//  Created by Naga k on 12/16/20.
//

import Foundation

// MARK: - ArtistModel
struct ArtistModel: Codable {
    let resultCount: Int
    let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case results
    }
}

// MARK: - Result
struct Result: Codable {
    let wrapperType: String
    let artistType: String?
    let artistName: String
    let artistLinkURL: String?
    let artistID, amgArtistID: Int
    let primaryGenreName: String
    let primaryGenreID: Int?
    let collectionType: String?
    let collectionID: Int?
    let collectionName, collectionCensoredName: String?
    let artistViewURL, collectionViewURL: String?
    let artworkUrl60, artworkUrl100: String?
    let collectionPrice: Double?
    let collectionExplicitness: String?
    let trackCount: Int?
    let copyright, country, currency: String?
    let releaseDate: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, artistType, artistName
        case artistLinkURL = "artistLinkUrl"
        case artistID = "artistId"
        case amgArtistID = "amgArtistId"
        case primaryGenreName
        case primaryGenreID = "primaryGenreId"
        case collectionType
        case collectionID = "collectionId"
        case collectionName, collectionCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case artworkUrl60, artworkUrl100, collectionPrice, collectionExplicitness, trackCount, copyright, country, currency, releaseDate
    }
}
