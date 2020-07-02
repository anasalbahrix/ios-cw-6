//
//  MoviesDetailsVC.swift
//  Classwork6
//
//  Created by Anas Albahri on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MoviesDetailsVC: UIViewController {
    var movieData:Movie = Movie(movieName: "jocker", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG-13")
    
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var Actor1IMG: UIImageView!
    @IBOutlet weak var Actor1Name: UILabel!
    @IBOutlet weak var Actor2IMG: UIImageView!
    @IBOutlet weak var Actor2Name: UILabel!
    @IBOutlet weak var Actor3IMG: UIImageView!
    @IBOutlet weak var Actor3Name: UILabel!
    


}
    

func setMovieDetails(){
    movieName.title = MovieData.movieName
    self.movieImg.image = UIImage(named: MovieData.movieName)
    self.movieRating.text = String(MovieData.rated)
    self.movieReleaseDate.text = String(MovieData.movieReleaseDate)
    self.Actor1IMG.image = UIImage(named: MovieData.actors[0])
    self.Actor1Name.text = MovieData.actors[0]
    self.Actor2IMG.image = UIImage(named: MovieData.actors[1])
    self.Actor2Name.text = MovieData.actors[1]}
    self.Actor3IMG.image = UIImage(named: MovieData.actors[2])
    self.Actor3Name.text = MovieData.actors[2]
}




