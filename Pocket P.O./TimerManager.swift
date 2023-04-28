//
//  TimerManager.swift
//  Pocket P.O.
//
//  Created by caden christesen on 4/27/23.
//

import Foundation
import SwiftUI
class QuizManager: ObservableObject{
    
    @Published private(set) var progress: CGFloat = 0.0
    @Published private(set) var index = 0
    
}
