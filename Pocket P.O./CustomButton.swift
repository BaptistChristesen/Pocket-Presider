//
//  CustomButton.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/17/23.
//


import SwiftUI

struct CustomButton: View {
    var text: String
    var background: Color = .blue
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(25)
            .shadow(radius: 10)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text:"Next")
    }
}

