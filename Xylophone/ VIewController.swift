//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation //package allows to tap into audio visal components of iphone

class ViewController: UIViewController {
    
 
var audioPlayer : AVAudioPlayer! //create an instance of the audio player!!

var selectedSoundFileName : String = "" //creating a public version of this varaible

let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //each of the buttons linked to that IBAction below have their own tag assigned
    //this avoids writign 7 IBActions as you can just refer to the tag

    @IBAction func notePressed(_ sender: UIButton) {
        
        //create variable and assign it to a string which is based on tag of sound array
        //add minus oen to fix the "out of range" error for the zero item on array not matching the correct "tag" for each note
        
//        selectedSoundFileName =  //local variable so not available outside this function
        
//        print(selectedSoundFileName)
        
        playSound(soundFileName: soundArray[sender.tag - 1])
        
        }
    
    func playSound(soundFileName : String) {
        
        let soundUrl = Bundle.main.url(forResource: soundFileName, withExtension: "wav") //define location of sound file
        
        do {
            
            audioPlayer =  try AVAudioPlayer(contentsOf: soundUrl!) //equivelant of opening cd player and putting in the disc!
        }
            
        catch {
            
            print(error)
        }
        
        audioPlayer.play()
    }

    
  

}//CLOSE UI CLASS


//IBACTION TESTING:
//        print(sender.tag) //find out which button was pressed
//        if sender.tag == 1 {
//            print("play middle C")
//        } else if sender.tag == 2 {
//            print("Play D")
//        }


//more steps from Stackoverflow "HOW TO PLAY SOUND IN SWIFT 3"

//        guard let player = player else { return }
//
//        player.prepareToPlay()
//        player.play()

//    } catch let error as NSError {
//
//        print(error.description)

