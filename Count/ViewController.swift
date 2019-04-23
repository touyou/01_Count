//
//  ViewController.swift
//  Count
//
//  Created by nagata on 4/26/17.
//  Copyright © 2017 nagata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var bestView: BestLabel!
    private var timer: Timer?
    private var timerTotalDuration: TimeInterval = 0
    var db = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        db.register(defaults: ["highestScore":0.0])
        bestView.text = String(format: "%.2f",db.double(forKey: "highestScore"))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startBtn(){
        startTimer()
    }
    
    @IBAction func stopBtn(){
        stopTimer()
    }
    
    @IBAction func resetBtn(){
        if db.double(forKey: "highestScore") < timerTotalDuration {
            db.set(timerTotalDuration,forKey:"highestScore")
        }
        resetTimer()
        label.text = "0.00"
        bestView.text = String(format: "%.2f",db.double(forKey: "highestScore"))
    }
    
    func startTimer() {
        guard timer == nil else { return }
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
        label.text = String(format: "%.2f",timerTotalDuration)
    }
    
}

