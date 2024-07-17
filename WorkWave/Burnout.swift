//
//  Burnout.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct Burnout: View {
    var body: some View {
        ZStack {
            Color(.beachYellow)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20){
                    Text("Burnout")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.darkBlue)
                    
                    Link("Healthline", destination: URL(string: "https://www.healthline.com/health/tips-for-identifying-and-preventing-burnout#prevention")!)
                        .foregroundStyle(.lobsterRed)
                        .font(.title3)
                        .fontWeight(.bold)
                }
                Spacer(minLength: 10)
                Text("What is burnout?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.darkBlue)
                    .background(Color.oceanGreen)
                    .cornerRadius(10)
    
                    Text("•Burnout is a state of mental, physical, and emotional exhaustion caused by prolonged or repeated stress.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                    Spacer(minLength: 20)
    
                Text("How can you avoid burnout?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.darkBlue)
                    .background(Color.oceanGreen)
                    .cornerRadius(10)
                    Text("•Exercise: Not only is exercise good for our physical health, but it can also give us an emotional boost.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                Spacer(minLength: 20)
                    
                    
                    Text("•Practice good sleeping habits: Our bodies need time to rest and reset, which is why healthy sleep habits are essential for our well-being.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                Spacer(minLength: 20)
            Spacer(minLength: 20)
                Text("•Learn to Manage Your Workload: Prioritize tasks by order of importance, and don't hesitate to delegate responsibilities when you have too much on your plate. ")
                    .font(.title3)
                    .foregroundColor(.darkBlue)
                
            Spacer(minLength: 20)
                Text("How to deal with burnout")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.darkBlue)
                    .background(Color.oceanGreen)
                    .cornerRadius(10)
                    Text("•It's essential to replenish your physical and emotional energy, along with your capacity to focus, by prioritizing good sleep habits, nutrition, exercise, social connection, and practices that promote equanimity and well-being, like meditating, journaling, and enjoying nature.")
                        .font(.title3)
                        .foregroundColor(.darkBlue)
                Spacer(minLength: 20)
                Text("More resources on dealing with burnout")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.darkBlue)
                    .background(Color.oceanGreen)
                    .cornerRadius(10)
                Link("Mayo Clinic", destination: URL(string: "https://www.mayoclinic.org/healthy-lifestyle/adult-health/in-depth/burnout/art-20046642")!)
                    .foregroundStyle(.lobsterRed)
                    .font(.title3)
                    .fontWeight(.bold)
                Link("NPR", destination: URL(string: "https://www.npr.org/2021/03/08/974787023/burnout-isnt-just-exhaustion-heres-how-to-deal-with-it")!)
                    .foregroundStyle(.lobsterRed)
                    .font(.title3)
                    .fontWeight(.bold)
                Link("Healthline", destination: URL(string: "https://www.healthline.com/health/mental-health/burnout-recovery")!)
                    .foregroundStyle(.lobsterRed)
                    .font(.title3)
                    .fontWeight(.bold)
                }
            .padding(20)
            }
            
        }
    }

#Preview {
Productivity()
}
