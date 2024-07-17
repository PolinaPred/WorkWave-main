//
//  Calendar.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

var num = 0
var tasks = [String]()

struct Calendar: View {
    
    @State var dateSelected = Date()
    
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
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:180, height:40)
                            .foregroundColor(.pink)
                        Text("Something 1")
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:180, height:40)
                            .foregroundColor(.green)
                        Text("Something 2")
                    }
                }
                HStack{
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:180, height:40)
                            .foregroundColor(.blue)
                        Text("Something 3")
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .cornerRadius(50)
                            .frame(width:180, height:40)
                            .foregroundColor(.yellow)
                        Text("Something 4")
                    }
                }
                Spacer()
            }.padding()
            DatePicker(
                selection: $dateSelected,
                displayedComponents: [.date],
                label: { Text("View Tasks for") })
            ScrollView{
                VStack{
                    ForEach(0..<24) { num in
                        HStack{
                            Text("\(num):30")
                            
                        }
                        HStack{
                            Text("\(num+1):00")
                        }
                    }
                    }
            }
        }.padding()
    }
}

#Preview {
    Calendar()
}
