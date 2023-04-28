//
//  TimerView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/22/23.
//

import SwiftUI


struct TimerView: View {
    @State private var timeRemaining = 0 // change this to set the countdown time
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var time = 150
    var body: some View {
        VStack {
            Text("Time Remaining: \(timeRemaining)")
                .font(.headline)
                .padding()
            
            //progress bar
            var progress = 0
            ZStack(alignment: .leading){
                Rectangle()
                    .frame(minWidth: 350, maxHeight: 4)
                    .foregroundColor(.gray)
                    .cornerRadius(10)
                Rectangle()
                    .frame(width: CGFloat(progress), height: 4)
                    .foregroundColor(.red)
                    .cornerRadius(10)
            }
            
            //start button
            Button(action: {
                // start the countdown timer
                timeRemaining = time // reset the timer
            }) {
                Text("Start Countdown")
                    .padding()
            }
        
            .onReceive(timer) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                    progress = (350 * (timeRemaining/time))
                }
            }}
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
