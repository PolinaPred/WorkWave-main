//
//  CalendarPage.swift
//  WorkWave
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI
import Foundation

var num = 0
var startTimes = [Date]()
var endTimes = [Date]()

struct CalendarPage: View {
    @State var taskNames = [String]()
    @State var newTask = ""
    @State var newDate = Date()
    @State var startTime = Date()
    @State var endTime = Date()
    @State var duration = ""
    @State var start = ""
    @State var dateSelected = Date()
    
    var totalTime: TimeInterval{
        endTime.timeIntervalSince(startTime)
    }
    
    var dateFormatter: DateComponentsFormatter {
        let df = DateComponentsFormatter()
        
        df.allowedUnits = [.hour, .minute]
        df.unitsStyle = .short
        
        return df
    }
    
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
            }.padding()
            HStack{
                VStack{
                    TextField(
                        "Task Name", text: $newTask)
                    DatePicker(
                        selection: $startTime,
                        displayedComponents: [.hourAndMinute],
                        label: { Text("Start Time")})
                    
                    DatePicker(
                        selection: $endTime,
                        displayedComponents: [.hourAndMinute],
                        label: { Text("End Time")})
                }
                VStack{
                    Spacer()
                    Button("Create"){
                        //duration = dateFormatter.string(from: totalTime) ?? ""
                        
                        //start = dateFormatter.string(from: startTime) ?? ""
                        
                        //taskNames.append(newTask)
                            //startTime.append(startTime)
                            //endTimes.append(endTime)
                    }
                    Spacer()
                    
                }
            }
            DatePicker(
                selection: $dateSelected,
                displayedComponents: [.date],
                label: { Text("View Tasks for") })
            ScrollView{
                VStack{
                    ForEach(0..<24) { num in
                        HStack{
                            Text("\(num):30")
                            if(taskNames.count > 0 && num < taskNames.count){
                                    Text(taskNames[num])
                            }
                        }
                        HStack{
                            Text("\(num+1):00")
                        }
                    }
                }
            }.frame(height:350)
        }.padding()
    }
}


#Preview {
    CalendarPage()
}
