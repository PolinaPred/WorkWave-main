//
//  ContentView.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: Navigation()){
                ZStack{
                    Rectangle()
                        .foregroundColor(.beachYellow)
                        .ignoresSafeArea()
                    VStack{
                        Spacer()
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Text("WorkWave")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.oceanGreen)
                            
                        Spacer()
                        Spacer()
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
