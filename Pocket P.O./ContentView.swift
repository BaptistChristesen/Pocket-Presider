 //
//  ContentView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    @State var name00 = ""
    @State var name01 = ""
    @State var name02 = ""
    @State var name03 = ""
    @State var name04 = ""
    @State var name05 = ""
    @State var name06 = ""
    @State var name07 = ""
    @State var name08 = ""
    @State var name09 = ""
    @State var name10 = ""
    @State var name11 = ""
    @State var name12 = ""
    @State var name13 = ""
    @State var name14 = ""
    @State var name15 = ""
    @State var name16 = ""
    @State var name17 = ""
    @State var name18 = ""
    @State var name19 = ""
    @State var name20 = ""

    var body: some View {
        NavigationView{
        VStack{
            HStack {
                CustomTextField(placeholder: "Name", variable: $name00, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name01, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name02, frameWidth: 120)
            }
            HStack {
                CustomTextField(placeholder: "Name", variable: $name03, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name04, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name05, frameWidth: 120)
            }
            HStack {
                CustomTextField(placeholder: "Name", variable: $name06, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name07, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name08, frameWidth: 120)
            }
            HStack {
                CustomTextField(placeholder: "Name", variable: $name09, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name10, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name11, frameWidth: 120)
            }
            HStack {
                CustomTextField(placeholder: "Name", variable: $name12, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name13, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name14, frameWidth: 120)
            }
            HStack {
                CustomTextField(placeholder: "Name", variable: $name15, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name16, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name17, frameWidth: 120)
            }
            HStack {
                CustomTextField(placeholder: "Name", variable: $name18, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name19, frameWidth: 120)
                CustomTextField(placeholder: "Name", variable: $name20, frameWidth: 120)
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

