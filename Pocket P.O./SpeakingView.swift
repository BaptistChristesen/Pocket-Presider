//
//  SpeakingView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/19/23.
//

import SwiftUI

struct SpeakingView: View {
    @Binding var names: [Name]
    var body: some View {
        List {
//            ForEach(names.filter{$0.name != ""}.sort{$0.speakingOrder}, id: \.self) { name in
              ForEach(names, id: \.self) { name in
                Text(name.name)
            }
            .onMove { indices, newOffset in
               names.move(fromOffsets: indices, toOffset: newOffset)
            }
        }
        .navigationBarItems(trailing: EditButton())
    }
}

struct SpeakingView_Previews: PreviewProvider {
    static var previews: some View {
        //SpeakingView(names: [Name]())
        ContentView()
    }
}
