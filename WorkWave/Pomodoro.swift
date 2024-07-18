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
            
            VStack{/*
                
                
                
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
                            
                            
                            
                            //                        Circle()
                            //                            .fill(.pinkish)
                            //                            .padding(-40.0)
                            //
                            //                        Circle()
                            //                            .fill(.)
                            //
                            //
                            //                        Circle()
                            //                            .trim(from: 0, to: 0.5)
                            //                            .stroke(Color("LobsterRed").opacity(0.7), lineWidth: 10)
                            //                            .blur(radius: 15)
                            
                            
                        }
                        .padding()
                        .frame(height: proxy.size.width)
                        .rotationEffect(.init(degrees: -90))
                        
                        
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
                
                
                
                
                
                
                
                
                Text(pomoduroModel.timeStringValue)
                
                
            }
            .padding()
            .overlay(content: {
                
                ZStack{
                    
                    Color.orange
                        .opacity(pomoduroModel.addNewTimer ? 0.25: 0)
                        .onTapGesture {
                            pomoduroModel.addNewTimer = false
                        }
                    
                    NewTimeView()
                        .frame(maxHeight: .infinity, alignment: .bottom )
                        .offset(y: pomoduroModel.addNewTimer ? 0: 400)
                    
                }
                .animation(.easeInOut, value: pomoduroModel.addNewTimer)
                
            })
            .preferredColorScheme(.light)
            .background(Color("BeachYellow"))
            .ignoresSafeArea()
            
            
            
            @ViewBuilder
            func NewTimeView () -> some View{
                
                
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
                        
                    }
                    .padding(.top, 20)
                    
                    
                    Button {
                        
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
                
                
            }
            
            struct Home_Previews: PreviewProvider {
                static var previews: some View {
                    
                    Home()
                        .environmentObject(PomoduroModel())
                    
                }*/
            }
        }
    }
#Preview {
    Pomodoro()
}
