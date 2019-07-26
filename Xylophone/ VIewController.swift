//
//  AppDelegate.swift
//  Xylophone
//
//  Created by Michael Tadeo on 07/26/2019.
//  Copyright © 2019 Tadeo Man. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
       
        selectedSoundFileName = soundArray[sender.tag - 1]
        playNote()
    }
    
    func playNote() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
    }
}
