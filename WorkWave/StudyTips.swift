//
//  StudyTips.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct StudyTips: View {
    var body: some View {
     
            ZStack {
                Color(.beachYellow)
                    .ignoresSafeArea()
                ScrollView {
                VStack(spacing: 15){
                    Text("Test Taking Tips")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.darkBlue)

                        Link("Harvard University", destination: URL(string: "https://summer.harvard.edu/blog/14-tips-for-test-taking-success/")!)
                            .foregroundStyle(.lobsterRed)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    
                    Text("Before the test...")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.darkBlue)
                        .background(Color.oceanGreen)
                        .cornerRadius(10)
                    
                    
                    Text("•Get enough sleep the night before: sleep can help you retain information and decreases stress.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    
                    
                    
                    Text("•Don't cram information the night before: It is highly counterproductive and can increase stress.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    Spacer()
                    
                    Text("During the test...")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.darkBlue)
                        .background(Color.oceanGreen)
                        .cornerRadius(10)
                    
                    Text("•Do a brain dump: Write down any formulas or mnemonics as soon as you recieve the test.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    Text("•Answer the questions you know first: When you come to a question that you can't answer relatively quickly, skip it on this first pass. Then go back to it later.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    Text("•Check your work: If you have time after you have completed the test, go back and check your work.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    Spacer()
                    
                    Text("After the test...")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.darkBlue)
                        .background(Color.oceanGreen)
                        .cornerRadius(10)
                    Text("•Mistakes are learning opportunities:Don't stress over a bad grade; use it to pinpoint where you can improve your understanding and study more effectively.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    
                }
                .padding()
            }
            
        }
    }
#Preview {
    StudyTips()
}
