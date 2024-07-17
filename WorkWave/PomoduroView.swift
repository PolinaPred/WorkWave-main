//
//  PomoduroView.swift
//  WorkWave
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI

struct PomoduroView: View {
    
    @EnvironmentObject var pomoduroModel: PomoduroModel
    
    var body: some View {
        
        Pomodoro()
            .environmentObject(pomoduroModel)
    }
}

#Preview{
    PomoduroView()
}
