//
//  TimerView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/22/23.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
class ViewController: UIViewController {
    @State var countdownLabel: UILabel!
    var timer = Timer()
    var countdownTime = 60
    override func viewDidLoad() {
        super.viewDidLoad()
        countdownLabel.text = "\(countdownTime)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCountdown), userInfo: nil, repeats: true)
    }
    @objc func updateCountdown() {
        countdownTime -= 1
        countdownLabel.text = "\(countdownTime)"
        if countdownTime == 0 {
            timer.invalidate()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
