//
//  SwiftUIView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/17/23.
//

struct SeatView: View {
    var name00 = ""
    var name01 = ""
    var name02 = ""
    var name03 = ""
    var name04 = ""
    var name05 = ""
    var name06 = ""
    var name07 = ""
    var name08 = ""
    var name09 = ""
    var name10 = ""
    var name11 = ""
    var name12 = ""
    var name13 = ""
    var name14 = ""
    var name15 = ""
    var name16 = ""
    var name17 = ""
    var name18 = ""
    var name19 = ""
    var name20 = ""
    new seat View {
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

