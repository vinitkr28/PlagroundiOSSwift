//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func CKeyPressed(_ sender: UIButton) {
        
  
        //print("I got pressed: \(String(describing: sender.titleLabel?.text))")
        print("I got pressed: \(String(describing: sender.currentTitle))")
        
        playSound(note: "C")
        
    }
    
    
    @IBAction func DKeyPressed(_ sender: UIButton) {
//        print("I got pressed: \(String(describing: sender.titleLabel?.text))")
        print("I got pressed: \(String(describing: sender.title(for: .normal)))")
        playSound(note: "D")
    }
    
    @IBAction func EKeyPressed(_ sender: UIButton) {
        print("I got pressed: \(String(describing: sender.titleLabel?.text))")
        playSound(note: "E")
    }
    
    @IBAction func FKeyPressed(_ sender: UIButton) {
        print("I got pressed: \(String(describing: sender.titleLabel?.text))")
        playSound(note: "F")
    }
    
    @IBAction func GKeyPressed(_ sender: UIButton) {
        print("I got pressed: \(String(describing: sender.titleLabel?.text))")
        playSound(note: "G")
    }
    
    @IBAction func AKeyPressed(_ sender: UIButton) {
        print("I got pressed: \(String(describing: sender.titleLabel?.text))")
        playSound(note: "A")
    }
    
    @IBAction func BKeyPressed(_ sender: UIButton) {
        print("I got pressed: \(String(describing: sender.titleLabel?.text))")
        playSound(note: "B")
    }
    
    
    
    func playSound(note: String) {
        guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

