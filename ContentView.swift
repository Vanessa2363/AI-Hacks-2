//
//  ContentView.swift
//  PeekScrolling
//
//  Created by Meng To on 2020-05-23.
//  Copyright © 2020 Meng To. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
        ZStack {
            Color(#colorLiteral(red: 0.9490196078, green: 0.9647058824, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Learn")
                    .font(.largeTitle).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text("Woman of the Day").font(.custom("Baloo Bhaijaan Regular", size: 36)).padding()
                //Past
                ZStack {
                    
                    Image(uiImage: #imageLiteral(resourceName: "Frame 1"))
                        .shadow(color: Color(#colorLiteral(red: 1, green: 0.5912755132, blue: 0.7364933491, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                        .offset(x: show ? -330 : 0)
                        .rotationEffect(Angle(degrees: show ? 10 : 0))
                        .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                }                
                             Text("Present").font(.custom("Baloo Bhaijaan Regular", size: 36))
                Group{
                ZStack {
                    Image(uiImage: #imageLiteral(resourceName: "MaeCJ2 (1)"))
                        .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)), radius:40, x:0, y:20)
                        .offset(x: show ? -20 : 0)
                        .rotation3DEffect(Angle(degrees: show ? 0 : 10), axis: (x: 0, y: 10, z: 0))
                        .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))

                    Image(uiImage: #imageLiteral(resourceName: "MaeCJ"))
                        .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                        .offset(x: show ? -330 : 0)
                        .rotationEffect(Angle(degrees: show ? 10 : 0))
                        .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                }                .onTapGesture {
                    self.show.toggle()
                }
                    ZStack {
                                     Image(uiImage: #imageLiteral(resourceName: "KBlodgett2 (1)"))
                                         .shadow(color: Color(#colorLiteral(red: 1, green: 0.5912755132, blue: 0.7364933491, alpha: 1)), radius:40, x:0, y:20)
                                         .offset(x: show ? -20 : 0)
                                         .rotation3DEffect(Angle(degrees: show ? 0 : 10), axis: (x: 0, y: 10, z: 0))
                                         .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))

                                Image(uiImage: #imageLiteral(resourceName: "KBlod"))
                                         .shadow(color: Color(#colorLiteral(red: 1, green: 0.5912755132, blue: 0.7364933491, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                                         .offset(x: show ? -330 : 0)
                                         .rotationEffect(Angle(degrees: show ? 10 : 0))
                                         .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                                 }
                .onTapGesture {
                    self.show.toggle()
                }
                ZStack {
                                                    Image(uiImage: #imageLiteral(resourceName: "CS wu"))
                                                        .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)), radius:40, x:0, y:20)
                                                        .offset(x: show ? -20 : 0)
                                                        .rotation3DEffect(Angle(degrees: show ? 0 : 10), axis: (x: 0, y: 10, z: 0))
                                                        .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))

                                               Image(uiImage: #imageLiteral(resourceName: "CS-Wu"))
                                                        .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                                                        .offset(x: show ? -330 : 0)
                                                        .rotationEffect(Angle(degrees: show ? 10 : 0))
                                                        .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                                                }
                .onTapGesture {
                    self.show.toggle()
                }
                ZStack {
                                                                   Image(uiImage: #imageLiteral(resourceName: "dorothyy"))
                                                                       .shadow(color: Color(#colorLiteral(red: 1, green: 0.5912755132, blue: 0.7364933491, alpha: 1)), radius:40, x:0, y:20)
                                                                       .offset(x: show ? -20 : 0)
                                                                       .rotation3DEffect(Angle(degrees: show ? 0 : 10), axis: (x: 0, y: 10, z: 0))
                                                                       .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))

                                                              Image(uiImage: #imageLiteral(resourceName: "Dorothy Hodgkin"))
                                                                       .shadow(color: Color(#colorLiteral(red: 1, green: 0.5912755132, blue: 0.7364933491, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                                                                       .offset(x: show ? -330 : 0)
                                                                       .rotationEffect(Angle(degrees: show ? 10 : 0))
                                                                       .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                                                               }
                .onTapGesture {
                    self.show.toggle()
                }
                }
                //Present
                Text("Present").font(.custom("Baloo Bhaijaan Regular", size: 36))
                ZStack {
                    Image(uiImage: #imageLiteral(resourceName: "lizzie"))
                        .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)), radius:40, x:0, y:20)
                        .offset(x: show ? -20 : 0)
                        .rotation3DEffect(Angle(degrees: show ? 0 : 10), axis: (x: 0, y: 10, z: 0))
                        .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))

                    Image(uiImage: #imageLiteral(resourceName: "Elizabeth-Asai"))
                        .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                        .offset(x: show ? -330 : 0)
                        .rotationEffect(Angle(degrees: show ? 10 : 0))
                        .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                }
                .onTapGesture {
                                  self.show.toggle()
                              }
                    ZStack {
                                     Image(uiImage: #imageLiteral(resourceName: "jedd"))
                                         .shadow(color: Color(#colorLiteral(red: 1, green: 0.5912755132, blue: 0.7364933491, alpha: 1)), radius:40, x:0, y:20)
                                         .offset(x: show ? -20 : 0)
                                         .rotation3DEffect(Angle(degrees: show ? 0 : 10), axis: (x: 0, y: 10, z: 0))
                                         .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))

                                Image(uiImage: #imageLiteral(resourceName: "Jedidah Isler"))
                                         .shadow(color: Color(#colorLiteral(red: 1, green: 0.5912755132, blue: 0.7364933491, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                                         .offset(x: show ? -330 : 0)
                                         .rotationEffect(Angle(degrees: show ? 10 : 0))
                                         .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                                 }
                .onTapGesture {
                    self.show.toggle()
                }
                ZStack {
                                                                   Image(uiImage: #imageLiteral(resourceName: "sheryl (1)"))
                                                                       .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)), radius:40, x:0, y:20)
                                                                       .offset(x: show ? -20 : 0)
                                                                       .rotation3DEffect(Angle(degrees: show ? 0 : 10), axis: (x: 0, y: 10, z: 0))
                                                                       .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))

                                                              Image(uiImage: #imageLiteral(resourceName: "SherylSandberg"))
                                                                       .shadow(color: Color(#colorLiteral(red: 0.4882041216, green: 0.8681291938, blue: 0.8373460174, alpha: 1)).opacity(0.3), radius: show ? 100 : 40, x:0, y: show ? 100 : 20)
                                                                       .offset(x: show ? -330 : 0)
                                                                       .rotationEffect(Angle(degrees: show ? 10 : 0))
                                                                       .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                                                               }
                               .onTapGesture {
                                   self.show.toggle()
                               }
                
                Spacer()
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
