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
                    Image("gavel2").resizable().frame(width: 150, height: 150)
                    Text("Instructions & Tips").font(.title)
                    VStack (alignment: .leading) {
                        Text("Talk to people once you enter the chamber and try to get on their good side, give them the impression that you are a nice person")
                            .padding()
                        Text("The chance that people will remember how well you did as PO is greater by choosing the third session. This is where all the uninteresting or unlikable bills are pushed to. This way, you are exempt from peforming a speech that session.")
                            .padding()
                        Text("In your speech, stress the fact that you will try your best to uphold fairness and speaking order as PO")
                            .padding()
                        Text("When selecting speakers and questioners, make it obvious that you are thoroughly looking around the room and being careful that you do not miss anybody. Some people are short and may be blocked by others who are taller. ")
                            .padding()
                        Text("When selecting at random, before speaking order is established, selections across the room. Do not make it look like you are checking only certain areas of the room. Some POs accidentally do this.")
                            .padding()
                    }
                    Spacer()
                }}}}
    struct InstructionView_Previews: PreviewProvider {
                        static var previews: some View {
                            InstructionView()
                        }
                    }

