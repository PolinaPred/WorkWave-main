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
            .preferredColorScheme(.light)
            .background(Color("BeachYellow"))
            .ignoresSafeArea()

        }
        
        
        struct Home_Previews: PreviewProvider {
            static var previews: some View {
                
                Pomodoro()
                    .environmentObject(PomoduroModel())
                
            }
        }
    }

#Preview {
    Pomodoro()
}
