//
//  Productivity.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct Productivity: View {
    var body: some View {
        ZStack {
            Color(.beachYellow)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20){
                    Text("Productivity Tips")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.darkBlue)
                    
                    Link("Harvard Business Review", destination: URL(string: "https://hbr.org/2015/12/9-productivity-tips-from-people-who-write-about-productivity#:~:text=Top%20performers%20take%20a%20different,portion%20of%20their%20off%2Dhours.")!)
                        .foregroundStyle(.lobsterRed)
                        .font(.title3)
                        .fontWeight(.bold)
                }
                Spacer(minLength: 10)
            
    
                    Text("•Make a habit of stepping back: We are more likely to find breakthrough ideas when we temporarily remove ourselves from the daily grind.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    Spacer(minLength: 20)
    
                    
                    Text("•Own your time: Block out time to work away from email, set your phone to only ring for select colleagues, and resist emails first thing in the morning until you've achieved at least one important task.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                Spacer(minLength: 20)
                    
                    
                    Text("•Make a manageable to-do list: This can help you avoid missing deadlines and it can help you efficiently manage your schedule.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                Spacer(minLength: 20)
                    Text("•Make important behaviors measureable:To make progress toward any goal, it helps to track our behaviors. ")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                Spacer(minLength: 20)
                    Text("•Do things today that make more time tomorrow:look for ways to automate or delegate activities that are not a good use of your time.  ")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                Spacer(minLength: 20)
            
                    
                }
            .padding(20)
            }
            
        }
    }

#Preview {
Productivity()
}
