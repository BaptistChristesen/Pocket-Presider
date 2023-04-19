 //
//  ContentView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Pocket P.O.")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                }
                NavigationLink {
                    SeatView()
                } label: {
                    CustomButton(text: "Start")
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
