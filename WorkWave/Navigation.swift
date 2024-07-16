//
//  Navigation.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                //Two buttons next to each other at the top
                HStack{
                    NavigationLink(destination: Calendar()){
                        ZStack{
                            Rectangle()
                                .cornerRadius(30)
                            Text("Calendar")
                        }
                    }
                    NavigationLink(destination: Pomodoro()){
                        ZStack{
                            Rectangle()
                                .cornerRadius(30)
                            Text("Pomodoro")
                        }
                    }
                }
                
                //Column of 3 info buttons
                Spacer()
                NavigationLink(destination: Burnout()){
                    ZStack{
                        Rectangle()
                            .cornerRadius(10)
                        Text("Info Page 1")
                    }
                }
                NavigationLink(destination: Productivity()){
                    ZStack{
                        Rectangle()
                            .cornerRadius(10)
                        Text("Info Page 2")
                    }
                }
                NavigationLink(destination: StudyTips()){
                    ZStack{
                        Rectangle()
                            .cornerRadius(10)
                        Text("Info Page 3")
                    }
                }
                
                //Let's make the Map button a bit more separate and larger since its function is somewhat different
                Spacer()
                NavigationLink(destination: Map()){
                    ZStack{
                        Rectangle()
                            .cornerRadius(20)
                        Text("Map")
                    }
                }
            }
        }
    }
}

#Preview {
    Navigation()
}
