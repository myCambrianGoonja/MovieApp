//
//  Movie.swift
//  MovieApp
//
//  Created by Goonja on 02/08/23.
//

import Foundation
class Movie {
    var title:String
    var releaseYear: Date?
    var rating: Int?
    var runtime: Date?
    var director: String?
    var actors: [String]? = []
    
    init(title: String, releaseYear: Date? = nil, rating: Int? = nil, runtime: Date? = nil, director: String? = nil, actors: [String]? = []) {
        self.title = title
        self.releaseYear = releaseYear
        self.rating = rating
        self.runtime = runtime
        self.director = director
        self.actors = actors
    }
}
