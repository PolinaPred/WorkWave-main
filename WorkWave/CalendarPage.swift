//
//  CalendarPage.swift
//  WorkWave
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI
import Foundation

var num = 0
var startTimes = [String]()
var endTimes = [Date]()
var durationList = [String]()

struct CalendarPage: View {
    @State var taskNames = [String]()
    @State var newTask = ""
    @State var newDate = Date()
    @State var startTime = Date()
    @State var endTime = Date()
    @State var duration = ""
    @State var start = ""
    @State var dateSelected = Date()
    @State var startHours = ""
    
    var totalTime: TimeInterval{
        endTime.timeIntervalSince(startTime)
    }
    var dateFormatter2: DateFormatter { let df = DateFormatter() 
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return df }
    
    var dateFormatter: DateComponentsFormatter {
        let df = DateComponentsFormatter()
        
        df.allowedUnits = [.hour, .minute]
        df.unitsStyle = .short
        
        return df
    }
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.beachYellow)
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("To Do")
                        .font(.title)
                    Spacer()
                    Button{
                        duration = dateFormatter.string(from: totalTime) ?? ""
                        start = dateFormatter2.string(from: startTime)
                        taskNames.append(newTask)
                        startTimes.append(start)
                        endTimes.append(endTime)
                        durationList.append(duration)
                        
                    } label: {
                        Image("plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }.frame(width:150)
                }.padding()
                VStack{
                    HStack{
                        ZStack{
                            Rectangle()
                                .cornerRadius(50)
                                .frame(width:180, height:40)
                                .foregroundColor(.oceanGreen)
                            Text("Category 1 - 2 hrs")
                        }
                        Spacer()
                        ZStack{
                            Rectangle()
                                .cornerRadius(50)
                                .frame(width:180, height:40)
                                .foregroundColor(.summerOrange)
                            Text("Category 2 - 30 min")
                        }
                    }
                    HStack{
                        ZStack{
                            Rectangle()
                                .cornerRadius(50)
                                .frame(width:180, height:40)
                                .foregroundColor(.lobsterRed)
                            Text("Category 3 - 1 hr")
                        }
                        Spacer()
                        ZStack{
                            Rectangle()
                                .cornerRadius(50)
                                .frame(width:180, height:40)
                                .foregroundColor(.greyGreen)
                            Text("Category 4 - 15 min")
                        }
                    }
                }.padding()
                HStack{
                    VStack{
                        TextField(
                            "Task Name", text: $newTask).font(.title)
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
                        if(start.count > 0){
                            /*var startIndex = start.startIndex
                            var hourIndex = start.index(start.startIndex, offsetBy: 11)...start.index(start.startIndex, offsetBy: 12)*/
                        }
                    }
                }.padding()
                /*DatePicker(
                 selection: $dateSelected,
                 displayedComponents: [.date],
                 label: { Text("View Tasks for") })*/
                ScrollView{
                    VStack{
                        ForEach(1..<24) { num in
                            HStack{
                                Text("\(num):00")
                                if(taskNames.count > 0 && num < taskNames.count){
                                    VStack{
                                        ZStack{Rectangle().cornerRadius(40)
                                                .foregroundColor(.oceanGreen)
                                            VStack{
                                                Text(taskNames[num])
                                                Text("Start Time: " + startTimes[num])
                                                Text("Duration: " + durationList[num])
                                            }.padding()
                                        }
                                    }
                                }else{
                                    Spacer()
                                }
                            }
                        }
                    }.padding()
                }.frame(height:350)
            }.padding()
        }
    }
}


#Preview {
    CalendarPage()
}
