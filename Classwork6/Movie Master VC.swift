//
//  Movie Master VC.swift
//  Classwork6
//
//  Created by Anas Albahri on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class Movie_Master_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
setMarvelImages()
setDCImages()
        
    }
    var marvelimages = MarvelMovieData
    var DCimages = DCMovieData
        
        @IBOutlet weak var MarvelImg0: UIButton!
        @IBOutlet weak var MarvelImg1: UIButton!
        @IBOutlet weak var MarvelImg2: UIButton!
        @IBOutlet weak var MarvelImg3: UIButton!
        @IBOutlet weak var MarvelImg4: UIButton!
        @IBOutlet weak var MarvelImg5: UIButton!
        
        
        @IBOutlet weak var dcImg0: UIButton!
        @IBOutlet weak var dcImg1: UIButton!
        @IBOutlet weak var dcImg2: UIButton!
        @IBOutlet weak var dcImg3: UIButton!
        @IBOutlet weak var dcImg4: UIButton!
        @IBOutlet weak var dcImg5: UIButton!
        func setMarvelImages(){
                   MarvelImg0.setBackgroundImage(UIImage(named: marvelimages[0].movieName), for: .normal)
                    MarvelImg1.setBackgroundImage(UIImage(named: marvelimages[1].movieName), for: .normal)
                    MarvelImg2.setBackgroundImage(UIImage(named: marvelimages[2].movieName), for: .normal)
                    MarvelImg3.setBackgroundImage(UIImage(named: marvelimages[3].movieName), for: .normal)
                    MarvelImg4.setBackgroundImage(UIImage(named: marvelimages[4].movieName), for: .normal)
                    MarvelImg5.setBackgroundImage(UIImage(named: marvelimages[5].movieName), for: .normal)
        }
        func setDCImages(){
            dcImg0.setBackgroundImage(UIImage(named: DCimages[0].movieName), for: .normal)
             dcImg1.setBackgroundImage(UIImage(named: DCimages[1].movieName), for: .normal)
             dcImg2.setBackgroundImage(UIImage(named: DCimages[2].movieName), for: .normal)
             dcImg3.setBackgroundImage(UIImage(named: DCimages[3].movieName), for: .normal)
             dcImg4.setBackgroundImage(UIImage(named: DCimages[4].movieName), for: .normal)
             dcImg5.setBackgroundImage(UIImage(named: DCimages[5].movieName), for: .normal)
            
        }
        
        var selectedMovie:Movie = Movie(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG")
        @IBAction func MarvelBtns(_ sender: UIButton) {
            print("Marvel",sender.tag)
            selectedMovie = MarvelMovieData[sender.tag]
            performSegue(withIdentifier: "goToTheMovieDetail", sender: nil)
        }
        @IBAction func DCBtns(_ sender: UIButton) {
            print("DC",sender.tag)
            selectedMovie = DCMovieData[sender.tag]
              performSegue(withIdentifier: "goToTheMovieDetail", sender: nil)        }
      
    }


