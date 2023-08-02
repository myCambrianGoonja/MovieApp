//
//  MovieList.swift
//  MovieApp
//
//  Created by Goonja on 02/08/23.
//

import Foundation

class MovieList {
    var list = [Movie]()
    
    let movieTitles = [
                        "Hum-Tum",
                        "Kabir Sign",
                        "OpenHimer",
                        "Barbie",
                        "Show Shang Redemption"
    ]
    
    init(_ count:Int) {
        for _ in 1...count {
            addMovies()
        }
    }
    
    func addMovies() {
        let title = movieTitles[Int.random(in: 0..<movieTitles.count)]
        self.list.append(Movie(title: title))
    }
    
    func deleteMovie(index: IndexPath) {
        list.remove(at: index.row)
    }
    
    func modifyMovies(from: IndexPath, to: IndexPath) {
        let fromData = list[from.row]
        list.remove(at: from.row)
        list.insert(fromData, at: to.row)
    }
}
