 //
//  ContentView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var names = [
    Name(speakingOrder: 0),
    Name(speakingOrder: 1),
    Name(speakingOrder: 2),
    Name(speakingOrder: 3),
    Name(speakingOrder: 4),
    Name(speakingOrder: 5),
    Name(speakingOrder: 6),
    Name(speakingOrder: 7),
    Name(speakingOrder: 8),
    Name(speakingOrder: 9),
    Name(speakingOrder: 10),
    Name(speakingOrder: 11),
    Name(speakingOrder: 12),
    Name(speakingOrder: 13),
    Name(speakingOrder: 14),
    Name(speakingOrder: 15),
    Name(speakingOrder: 16),
    Name(speakingOrder: 17),
    Name(speakingOrder: 18),
    Name(speakingOrder: 19),
    Name(speakingOrder: 20)
    ]
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Welcome to Pocket P.O.")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                }
                NavigationLink {
                    SeatView(names: $names)
                } label: {
                    CustomButton(text: "Seating Chart")
                }
                NavigationLink {
                    InstructionView()
                } label: {
                    CustomButton(text: "PO Instructions")
                }
                NavigationLink {
                    SpeakingView(names: $names)
                } label: {
                    CustomButton(text: "Speaking Order")
                }
                NavigationLink {
                    TimerView()
                } label: {
                    CustomButton(text: "Timer")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all)        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
