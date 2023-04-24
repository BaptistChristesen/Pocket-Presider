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

class TimerViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    var seconds = 60
    var timer = Timer()
    var isTimerRunning = false
    @IBAction func startButtonTapped(_ sender: UIButton) {
    }
    @IBAction func pauseButtonTapped (sender: UIButton) {
    }
    @IBAction func resetButtonTapped (sender: UIButton) { }
    override func viewDidLoad() {
    }
    super.viewDidLoad()
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
