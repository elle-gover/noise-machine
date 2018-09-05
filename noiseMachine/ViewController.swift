//
//  ViewController.swift
//  noiseMachine
//
//  Created by Elle Gover on 9/5/18.
//  Copyright © 2018 com.detroitlabs. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func glassSound() {
        guard let url = Bundle.main.url(forResource: "glassBreaking", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = audioPlayer else { return }
            
            player.play()
            
        } catch let error {
            print("There is an error.")
        }
    }
    
    
    func clangSound() {
        guard let url = Bundle.main.url(forResource: "clang", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = audioPlayer else { return }
            
            player.play()
            
        } catch let error {
            print("There is an error.")
        }
    }
    
    
    
    
    @IBAction func clangButton(_ sender: UIButton) {
        clangSound()
    }
    
    
    
    @IBAction func glassButton(_ sender: UIButton) {
        
       glassSound()
        
    }
    


}

