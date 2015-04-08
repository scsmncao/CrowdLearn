//
//  LessonContentView.swift
//  CrowdLearn
//
//  Created by Simon Cao on 4/7/15.
//  Copyright (c) 2015 CrowdLearn. All rights reserved.
//

import UIKit
import MediaPlayer

class VideoPlaybackView: UIViewController {
    
    var moviePlayer:MPMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()
        
    }
    
    func playVideo() {
        
        //Get the Video Path
        //You need to put this in Project->Target->copy bundle resource for this to work
        let videoPath = NSBundle.mainBundle().pathForResource("Displacement from Time and Velocity Example", ofType:"mp4")
        
        //Make a URL from your path
        let url = NSURL.fileURLWithPath(videoPath!)
        
        //Initalize the movie player
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        if let player = moviePlayer {
            
            //Make the player scale the entire view
            player.view.frame = self.view.bounds
//            player.scalingMode = .AspectFill
            
            //Add it as a subView to your currentView
            self.view.addSubview(player.view)
            
//            moviePlayer.fullscreen = true
            
            //Play the video
            player.prepareToPlay()
            
        }
        else {
            println("Movie player couldn't be initialized")  
        }  
    }

    
}
