//
//  IntroductionPage.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 07/02/24.
//

/*
 Refence:
 
 https://www.inews.id/news/nasional/cara-memainkan-kolintang-alat-musik-tradisional-dari-sulawesi-utara-dan-sejarahnya

 https://infopublik.id/galeri/foto/detail/149720

 https://finance.detik.com/foto-bisnis/d-7049972/top-alat-musik-kolintang-asal-minahasa-ini-mendunia-lho
 
 */

import Foundation
import SwiftUI



struct IntroductionPage : View {
    @State var pageIndex = 0;
    var timer = Timer.publish(every: 3.0, on: .main, in: .default).autoconnect()
    
    var buttonHandler : () -> Void
    
    init(buttonHandler: @escaping () -> Void) {
        self.buttonHandler = buttonHandler
    }
    
    private var images : [Image] = [
        Image("image_1"),
        Image("image_2"),
        Image("image_3")
    ]
    
    var dotAppearrance = UIPageControl.appearance()
    
    var body: some View {
        VStack {
            TabView(selection: $pageIndex) {
                images[0]
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .alignmentGuide(.top) { $0[VerticalAlignment.top] }
                    .tag(0)
                
                images[1]
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .alignmentGuide(.top) { $0[VerticalAlignment.top] + 20 }
                    .tag(1)
                
                images[2]
                    .resizable()
                    .scaledToFill()
                    .tag(2)
            }
            .onReceive(timer) { _ in
                if pageIndex < images.count {
                    pageIndex += 1
                } else {
                    pageIndex = 0
                }
            }
            .tabViewStyle(.page)
            .animation(.easeInOut, value : pageIndex)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .onAppear {
                dotAppearrance.currentPageIndicatorTintColor = .black
                dotAppearrance.pageIndicatorTintColor = .systemGray2
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 2 / 4)
            .padding(.bottom, 20)
            
            
            buildText(text: "Now, the place where the Minahasa native tribe lives is known as Tondano, located in North Sulawesi, Indonesia. Originally, the kolintang could produce notes ranging from low to 2 octaves, and is consisted of several wooden pieces placed in a row above the player’s feet. The modern kolintang that we see today, which uses resonators, has been available since the arrival of Prince Diponegoro in Minahasa in 1830.")
                .padding(.bottom, 10)
                .padding(.leading, 16)
                
            
            buildText(text: "The origin of the name Kolintang is inspired by the tones produced by a musical instrument, such as \"Tong\" for low tones, \"Ting\" for high tones, and \"Tang\" when we combine three of them together it becom \"Tong Ting Tang\" while expressing the sentence \"Maimo Kumolintang\" means \"let's Tong Ting Tang\" in minahasa language, to encourage people to play it. Over time, this expression evolved into the term Kolintang.")
                .padding(.leading, 16)
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    buttonHandler()
                } label: {
                    Text("Try Kolintang")
                        .font(.system(size: 30))
                        .foregroundStyle(Color.init(hex: "#F06543"))
                        .fontWeight(.bold)
                        .padding(.leading, 32)
                        .padding(.trailing, 32)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .background(Color.init(hex: "#D2D0BA"))
                        .cornerRadius(20)
                }
                .padding(.trailing, 20)
                ZStack(alignment: .center) {
                    Image(systemName: "music.quarternote.3")
                        .resizable()
                        .opacity(0.1)
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Text("3")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                }
                .padding(.trailing, 16)
            }.padding(.bottom, 20)
        }.background(Color.init(hex: "#A7F683").opacity(0.2))
    }
    
    @ViewBuilder
    func buildText(text : String) -> some View {
        HStack{
            Text(text)
                .font(.system(size: 28))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
        }.padding(.bottom, 10)
    }
}
