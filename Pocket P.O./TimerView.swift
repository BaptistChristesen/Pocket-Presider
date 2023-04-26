//
//  TimerView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/22/23.
//

import SwiftUI


struct TimerView: View {
    @State private var timeRemaining = 10 // change this to set the countdown time
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            Text("Time Remaining: \(timeRemaining)")
                .font(.headline)
                .padding()
            Button(action: {
                // start the countdown timer
                timeRemaining = 10 // reset the timer
            }) {
                Text("Start Countdown")
                    .padding()
            }
        }
        .onReceive(timer) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
        }
    }
}
struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
