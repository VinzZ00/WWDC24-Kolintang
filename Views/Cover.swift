//
//  Cover.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 07/02/24.
//

/*
 Reference:
 https://www.detik.com/bali/berita/d-6547081/kolintang-berasal-dari-mana-asal-usul-dan-cara-memainkannya
 */

import Foundation
import SwiftUI

struct Cover : View {
    
    @State var yOffset: CGFloat = UIScreen.main.bounds.height
    @State var textIsShown = false
    @State var textOpacity : CGFloat = 0
    @State var showStory = false
    @State var isSwiping: Bool = false
    
    var body : some View {
        VStack {
            Image("KolintangCover")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 2/3)
                .padding(.top, 200)
                .padding(.bottom, 50)
                .offset(y: yOffset)
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        yOffset = 0
                    }
                }
            
            if textIsShown {
                Text("Kolintang\nWood Instrument")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 50)
            }
            
            
            Spacer()
            HStack {
                Spacer()
                Text("Swipe the page to start the story")
                    .font(.system(size: 35))
                    .fontWeight(.medium)
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                    .opacity(textOpacity)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 0.8)) {
                            textOpacity = 1
                            startAutoSwipeTimer()
                        }
                    }
                    .gesture(
                        DragGesture()
                            .onChanged { _ in
                                withAnimation {
                                    isSwiping = true
                                }
                            }
                            .onEnded { _ in
                                withAnimation {
                                    isSwiping = false
                                    showStory = false
                                    startAutoSwipeTimer()
                                }
                            }
                    )
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
                textIsShown = true
                
                
            })
        }
        .background {
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "music.quarternote.3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .opacity(0.1)
                        .padding(.leading, 20)
                        .padding(.bottom, 20)
                    Spacer()
                }
            }.background(Color.init(hex: "#A7F683").opacity(0.2))
        }
    }
    
    func startAutoSwipeTimer() {
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { _ in
            withAnimation {
                showStory = false
            }
        }
    }
}
