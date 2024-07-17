//
//  PomoduroApp.swift
//  WorkWave
//
//  Created by Scholar on 7/17/24.
//
import SwiftUI
struct PomoduroApp: App{
    
    @StateObject var pomoduroModel: PomoduroModel = .init()
    
    var body: some Scene {
        
        WindowGroup {
            
            
        }
    }
}

#Preview{
    
    PomoduroApp() as! any View
    
}
