//
//  InstructionView.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/19/23.
//

import SwiftUI
    
    struct InstructionView: View {
        var body: some View {
            ZStack {
                VStack {
                    Text("Tips For P.O.").font(.title)
                    VStack (alignment: .leading) {
                        Text("Talk to people once you enter the chamber and try to get on their good side, give them the impression that you are a nice person")
                            .padding()
                        Text("Pick the third session, because there is a greater chance that people will remember how well you did as PO. The third session is where all the uninteresting or unlikable bills are pushed into. This way, you are excused from having to make a speech that session.")
                            .padding()
                        Text("In your speech, stress the fact that you will try your best to uphold fairness and speaking order as PO")
                            .padding()
                        Text("When selecting speakers and questioners, make it obvious that you are thoroughly looking around the room and being careful that you do not miss anybody. Some people are short and may be blocked by others who are taller. ")
                            .padding()
                        Text("When selecting at random, before speaking order is established, spread out your selections across the room. Do not make it look like you are checking only one side of the room or the side closest to you. Some POs accidentally do this.")
                            .padding()
                    }
                    Spacer()
                }}}}
    struct InstructionView_Previews: PreviewProvider {
                        static var previews: some View {
                            InstructionView()
                        }
                    }

