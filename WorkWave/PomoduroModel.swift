//
//  PomoduroModel.swift
//  WorkWave
//
//  Created by Scholar on 7/17/24.
//
import SwiftUI

class PomoduroModel: NSObject, ObservableObject{
    
    @Published var progress: CGFloat = 1
    @Published var timeStringValue: String = "00:00"
    @Published var isStarted: Bool = false
    @Published var addNewTimer: Bool = false
    
    @Published var hour: Int = 0
    @Published var minutes: Int = 0
    @Published var seconds: Int = 0
}
