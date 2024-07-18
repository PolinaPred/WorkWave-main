//
//  Pomodoro.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//
import SwiftUI

struct Pomodoro: View {
    @EnvironmentObject var pomoduroModel: PomoduroModel
        
        var body: some View {
          Image("Pomodoro")
            /*
            VStack{
                
                
                
                Text("Pomoduro Timer")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("GreyGreen"))
                    .multilineTextAlignment(.center)
                
                GeometryReader{proxy in
                    
                    
                    
                    VStack(spacing: 15){
                        ZStack{
                            
                            Button{
                                
                                if pomoduroModel.isStarted{
                                    pomoduroModel.stopTimer()
                                }else{
                                    
                                    pomoduroModel.addNewTimer = true
                                    
                                }
                                
                            }label: {
                                
                                Image(systemName: pomoduroModel.isStarted ? "timer": "pause")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .frame(width: 80, height: 80)
                                    .rotationEffect(.init(degrees: -90))
                                
                            }
                            
                            
                            
                            Circle()
                                .fill(.pinkish)
                                .padding(-40.0)
                            
                            Circle()
                                .fill(.white)
                            
                            
                            Circle()
                                .trim(from: 0, to: 0.5)
                                .stroke(Color("LobsterRed").opacity(0.7), lineWidth: 10)
                                .blur(radius: 15)
                            
                            
                        }
                        .padding()
                        .frame(height: proxy.size.width)
                        .rotationEffect(.init(degrees: -90))
                        
                        
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
                
                
                
                
                
                
                
                
                Text(pomoduroModel.timeStringValue)
                    .font(.system(size: 45, weight: .light))
                    .animation(.easeInOut, value: pomoduroModel.progress)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                
            }
            .padding()
            .overlay(content: {
                
                ZStack{
                    
                    Color.orange
                        .opacity(pomoduroModel.addNewTimer ? 0.25: 0)
                        .onTapGesture {
                            pomoduroModel.hour = 0
                            pomoduroModel.minutes = 0
                            pomoduroModel.seconds = 0
                            pomoduroModel.addNewTimer = false
                        }
                    
                    newTimeView()
                        .frame(maxHeight: .infinity, alignment: .bottom )
                        .offset(y: pomoduroModel.addNewTimer ? 0: 400)
                    
                }
                .animation(.easeInOut, value: pomoduroModel.addNewTimer)
                
            })
            .preferredColorScheme(.light)
            .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()){}
            .alert("Congradulations! You did it!", isPresented: $pomoduroModel.isFinished){
                
                Button("Start New", role: .cancel ){}
                
                pomoduroModel.stopTimer()
                pomoduroModel.addNewTimer = true
                
            }
            Button("Close", role: .destructive){
                
                pomoduroModel.stopTimer()
                
            }
            
            
            
            do {   in
            if pomoduroModel.isStarted{
                    pomoduroModel.updateTimer()
                }
                
            }
            
            .background(Color("BeachYellow"))
            .ignoresSafeArea()
            
            
            
            
            func newTimeView () -> some view {
                
                
                VStack(spacing: 15){
                    
                    
                    Text("Add New Timer")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("GreyGreen"))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    
                    
                    HStack(spacing: 15){
                        
                        Text("\(pomoduroModel.hour) hr")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white.opacity(0.3))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .background{
                                
                                Capsule()
                                    .fill(.white.opacity(0.07))
                                
                            }
                            .contextMenu{
                                
                                ContextMenuOptions(maxValue: 12, hint: "hr"){value in
                                    pomoduroModel.hour = value
                                }
                                
                            }
                        
                        
                        
                        Text("\(pomoduroModel.minutes) min ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white.opacity(0.3))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .background{
                                
                                Capsule()
                                    .fill(.white.opacity(0.07))
                                
                            }
                            .contextMenu{
                                
                                ContextMenuOptions(maxValue: 60, hint: "min"){value in
                                    pomoduroModel.minutes = value
                                }
                                
                            }
                        
                        
                        
                        Text("\(pomoduroModel.seconds) sec")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white.opacity(0.3))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .background{
                                
                                Capsule()
                                    .fill(.white.opacity(0.07))
                                
                            }
                            .contextMenu{
                                
                                ContextMenuOptions(maxValue: 60, hint: "sec"){value in
                                    pomoduroModel.seconds = value
                                }
                                
                            }
                        
                        
                        
                    }
                    .padding(.top, 20)
                    
                    
                    Button {
                        
                        pomoduroModel.startTimer()
                        
                    } label: {
                        Text("Save")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .padding(.horizontal, 100 )
                        background{
                            
                            Capsule()
                                .fill(Color("LobsterRed"))
                            
                        }
                    }
                    .disabled(pomoduroModel.seconds == 0)
                    .opacity(pomoduroModel.seconds == 0 ?  0.5: 1)
                    .padding(.top)
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background()
                RoundedRectangle(cornerRadius: 10, style: .continuous )
                    .fill(Color("BeachYellow"))
                    .ignoresSafeArea()
                
                @ViewBuilder
                
                func ContextMenuOptions(maxValue: Int,hint: String,onClick: @escaping(Int) ->())->
                some View{
                    
                    ForEach(0...maxValue,id: \.self){value in
                        
                        Button("\(value) \(hint)"){
                            
                            onClick(value)
                            
                        }
                        
                        
                    }
                    
                }
                
                
            }
            
    //        struct Home_Previews: PreviewProvider {
    //            static var previews: some View {
    //
    //                Home()
    //                    .environmentObject(PomoduroModel())
    //
    //            }
    //        }*/
        }
    }

#Preview {
    Pomodoro()
}
