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

    // instances
    var glassPlayer: AVAudioPlayer?
    var clangPlayer: AVAudioPlayer?
    var knifePlayer: AVAudioPlayer?
    var boingPlayer: AVAudioPlayer?
    var howdyPlayer: AVAudioPlayer?
    
    
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
            
            glassPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = glassPlayer else { return }
            
            player.play()
            
        } catch {
            print("There is no sound here.")
        }
    }
    
    
    func clangSound() {
        guard let url = Bundle.main.url(forResource: "clang", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            clangPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = clangPlayer else { return }
            
            player.play()
            
        } catch {
            print("There is no sound here.")
        }
    }
    
    func knifeSound() {
        guard let url = Bundle.main.url(forResource: "knife", withExtension: "m4a") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            knifePlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = knifePlayer else { return }
            
            player.play()
            
        } catch {
            print("There is no sound here.")
        }
    }
    
    func boingSound() {
        guard let url = Bundle.main.url(forResource: "boing", withExtension: "m4a") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            boingPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = boingPlayer else { return }
            
            player.play()
            
        } catch {
            print("There is no sound here.")
        }
    }
    
    func howdySound() {
        guard let url = Bundle.main.url(forResource: "howdy", withExtension: "m4a") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            howdyPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = howdyPlayer else { return }
            
            player.play()
            
        } catch {
            print("There is no sound here.")
        }
    }
    
    
    
    @IBAction func clangButton(_ sender: UIButton) {
        
        clangSound()
        sender.pulsate()
      
    }
    
    @IBAction func glassButton(_ sender: UIButton) {
        
        glassSound()
        sender.pulsate()
      
    }
    
    @IBAction func knifeButton(_ sender: UIButton) {
        
        knifeSound()
        sender.pulsate()
        
    }
    
    @IBAction func boingButton(_ sender: UIButton) {
        
        boingSound()
        sender.pulsate()
        
    }
    
    
    @IBAction func howdyButton(_ sender: UIButton) {
        
        howdySound()
        sender.pulsate()
        
    }
    
}

