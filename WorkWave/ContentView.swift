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
                VStack{
                    Image("Logo")
                    Text("WorkWave")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
