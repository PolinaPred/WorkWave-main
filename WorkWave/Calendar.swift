//
//  Calendar.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct Calendar: View {
    var body: some View {
        VStack{
            HStack{
                Text("To Do")
                    .font(.title)
                Spacer()
                ZStack{
                    Rectangle()
                        .cornerRadius(50)
                        .frame(width:130, height:40)
                        .foregroundColor(.gray)
                    HStack{
                        Text(" New Task")
                            .foregroundColor(.white)
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(height:30)
                            Text("+")
                                .font(.title)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }.padding()
            VStack{
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:130, height:40)
                            .foregroundColor(.pink)
                        Text("Something 1")
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:130, height:40)
                            .foregroundColor(.green)
                        Text("Something 2")
                    }
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:130, height:40)
                            .foregroundColor(.blue)
                        Text("Something 3")
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:130, height:40)
                            .foregroundColor(.yellow)
                        Text("Something 4")
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Calendar()
}
