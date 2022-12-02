//
//  ViewController.swift
//  Xylophone
//
//  Created by Adilet Abilkhan on 02.12.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        playSound(key: sender.currentTitle ?? "")
    }
    
    private func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

