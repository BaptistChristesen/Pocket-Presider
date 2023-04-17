 //
//  ContentView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack{
            ForEach(0..<7) { row in
                HStack {
                    ForEach(0..<3) { coll in
                        SeatView(name: "Seating chart")
                            .padding()
                    }
                }
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SeatView: View {
    @State var name: String
    var body: some View {
        NavigationLink("\(name)") {
            TextField("name", text: $name)
        }
        }
    }

