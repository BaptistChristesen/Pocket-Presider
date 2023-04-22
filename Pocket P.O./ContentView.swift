 //
//  ContentView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var names = [Name](repeating:Name(), count: 21)
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
                    SpeakingView()
                } label: {
                    CustomButton(text: "Speaking Order")
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
