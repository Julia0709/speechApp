//
//  ViewController.swift
//  speechApp
//
//  Created by Julia on 2017/06/18.
//  Copyright © 2017 Julia. All rights reserved.
//

import UIKit
import AVFoundation // to access speech feature

class ViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    var synthesizer = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedSpeech(_ sender: Any) {
        
        // create contents
        let contents = AVSpeechUtterance(string: textView.text ?? "")
        
        // set language
        contents.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        // start speech
        synthesizer.speak(contents)

    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//
//    }
    
}

