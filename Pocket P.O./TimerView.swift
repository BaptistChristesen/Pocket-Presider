import SwiftUI

struct TimerView: View {
    @State private var timeRemaining1 = 150
    @State private var timeRemaining2 = 120
    @State private var timer1: Timer?
    @State private var timer2: Timer?
    @State private var progress1: CGFloat = 1.0
    @State private var progress2: CGFloat = 1.0
    @State private var pausedTime1: TimeInterval = 0
    @State private var pausedTime2: TimeInterval = 0

    private let progressBarHeight: CGFloat = 10
    private let iconSize: CGFloat = 20

    var body: some View {
        VStack {
            Group{
                Text("Speech Timer")
                    .font(.title)
                    .padding()

                HStack {
                    Text("Duration:")
                    Text("2 min 30 sec")
                }
                .padding()

                Button("Start Speech") {
                    if pausedTime1 == 0 {
                        timeRemaining1 = 150
                    }
                    timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                        timeRemaining1 -= 1
                        progress1 = CGFloat(timeRemaining1) / 150.0
                        if timeRemaining1 == 0 {
                            timer1?.invalidate()
                            timer1 = nil
                            pausedTime1 = 0
                        }
                    }
                    if let pausedTimer = timer1, pausedTime1 > 0 {
                        pausedTimer.fireDate += pausedTime1
                        pausedTime1 = 0
                    }
                }
                .padding()

                HStack {
                    Button(action: {
                        timer1?.invalidate()
                        timer1 = nil
                        if let pausedTimer = timer1 {
                            pausedTime1 += Date().timeIntervalSince(pausedTimer.fireDate)
                        }
                    }) {
                    }

                    Spacer()
                }
                .padding(.horizontal)
                .opacity(timer1 != nil ? 1.0 : 0.0)

                if timeRemaining1 > 0 {
                    HStack {
                        Text("Time Remaining:")
                        Text("\(timeRemaining1 / 60) min \(timeRemaining1 % 60) sec")
                    }
                    .padding()

                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .foregroundColor(Color.gray.opacity(0.5))
                                .frame(height: progressBarHeight)
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(width: progress1 * geometry.size.width, height: progressBarHeight)
                        }
                    }
                    .padding()
                }

                Spacer()
            }

//timer 2 starts
            Group {
                Text("Question Timer")
                    .font(.title)
                    .padding()
                
                HStack {
                    Text("Duration:")
                    Text("2 min")
                }
                .padding()
                
                Button("Start Questions") {
                    timeRemaining2 = 120
                    timer2 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                        timeRemaining2 -= 1
                        progress2 = CGFloat(timeRemaining2) / 120.0
                        if timeRemaining2 == 0 {
                            timer2?.invalidate()
                            timer2 = nil
                        }
                    }
                }
                .padding()
                
                HStack {
                    Button(action: {
                        timer2?.invalidate()
                        timer2 = nil
                    }) {
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                .opacity(timer2 != nil ? 1.0 : 0.0)
                
                if timeRemaining2 > 0 {
                    HStack {
                        Text("Time Remaining:")
                        Text("\(timeRemaining2 / 60) min \(timeRemaining2 % 60) sec")
                    }
                    .padding()
                }
                
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .foregroundColor(Color.gray.opacity(0.5))
                            .frame(height: progressBarHeight)
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: progress2 * geometry.size.width, height: progressBarHeight)
                    }
                }
                .padding()
            }
            }
        }
    }



struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
