//
//  SwiftUIView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/17/23.
//

import SwiftUI

struct SeatView: View {
    @Binding var names: [Name]
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    CustomTextField(placeholder: "Name", variable: $names[0].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[1].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[2].name, frameWidth: 120)
                }
                HStack {
                    CustomTextField(placeholder: "Name", variable: $names[3].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[4].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[5].name, frameWidth: 120)
                }
                HStack {
                    CustomTextField(placeholder: "Name", variable: $names[6].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[7].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[8].name, frameWidth: 120)
                }
                HStack {
                    CustomTextField(placeholder: "Name", variable: $names[9].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[10].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[11].name, frameWidth: 120)
                }
                HStack {
                    CustomTextField(placeholder: "Name", variable: $names[12].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[13].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[14].name, frameWidth: 120)
                }
                HStack {
                    CustomTextField(placeholder: "Name", variable: $names[15].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[16].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[17].name, frameWidth: 120)
                }
                HStack {
                    CustomTextField(placeholder: "Name", variable: $names[18].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[19].name, frameWidth: 120)
                    CustomTextField(placeholder: "Name", variable: $names[20].name, frameWidth: 120)
                }
            }
        }
    }
}

struct SeatView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct SeatView: View {
//    @State var name: String
//    var body: some View {
//        NavigationLink("\(name)") {
//            TextField("name", text: $name)
//        }
//        }
//    }
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    let frameWidth : CGFloat
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: frameWidth, height: 30, alignment: .center)
            .font(.body)
    }
}

struct Name {
    var name = ""
    var color = Color.black
    
}

