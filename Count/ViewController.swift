//
//  ViewController.swift
//  Count
//
//  Created by nagata on 4/26/17.
//  Copyright © 2017 nagata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: CountLabel!
    @IBOutlet var bestLabel: BestLabel!
    private var timer: Timer?
    private var timerTotalDuration: TimeInterval = 0
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveData.register(defaults: ["highestScore": 0.0])
        bestLabel.text = String(format: "%.2f", saveData.double(forKey: "highestScore"))
    }
    
    @IBAction func tappedStartButton(){
        startTimer()
    }
    
    @IBAction func tappedStopButton(){
        stopTimer()
    }
    
    @IBAction func tappedResetButton(){
        stopTimer()
        if saveData.double(forKey: "highestScore") < timerTotalDuration {
            saveData.set(timerTotalDuration, forKey: "highestScore")
            bestLabel.text = String(format: "%.2f", saveData.double(forKey: "highestScore"))
        }
        resetTimer()
        countLabel.text = "0.00"
    }
    
    func startTimer() {
        if timer != nil { return }
        timer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(handleTimer(_:)),
            userInfo: nil,
            repeats: true
        )
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func resetTimer() {
        stopTimer()
        timerTotalDuration = 0
    }
    
    @objc private func handleTimer(_ timer: Timer) {
        timerTotalDuration += timer.timeInterval
        countLabel.text = String(format: "%.2f", timerTotalDuration)
    }
    
}

