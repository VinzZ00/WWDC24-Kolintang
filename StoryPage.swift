//
//  StoryPage.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 07/02/24.
//


/* Reference :
https://katadata.co.id/safrezi/berita/6194cef014a64/sejarah-alat-musik-kolintang-alunan-penyambut-tamu-di-minahasa
 
https://www.freepik.com/free-vector/set-wood-logs-stubs-white-background_29006581.htm
 */

import SwiftUI

struct StoryPage: View {

    var buttonHandler : () -> Void
    
    init(buttonHandler: @escaping () -> Void) {
        self.buttonHandler = buttonHandler
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("The Story Of Kolintang")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .padding(.leading, 16)
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.top, 10)
            .padding(.bottom, 10)
            Spacer()
            HStack {
                Spacer()
                Button {
                    buttonHandler()
                } label: {
                    Text("Try Kolintang")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .padding(.leading, 32)
                        .padding(.trailing, 32)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                .padding(.trailing, 20)
                ZStack(alignment: .center) {
                    Image(systemName: "music.quarternote.3")
                        .resizable()
                        .opacity(0.1)
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Text("2")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                }
                .padding(.trailing, 16)
            }.padding(.bottom, 20)
        }.background{
            VStack {
                Spacer()
                HStack {
                    HStack {
                        Image("girl")
                            .resizable()
                            .scaledToFit()
                        Spacer()
                        ZStack {
                            Image("tree-choped")
                                .resizable()
                                .scaledToFit()
                                .padding(.leading, 100)
                                .offset(y : 30)
                            Image("boy")
                                .resizable()
                                .scaledToFit()
                        }
                    }.frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.height / 4)
                        .padding(.leading, 16)
                    Spacer();
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            }.background(Color.init(hex: "#A7F683").opacity(0.2))
        }
    }
}


//struct HillShape: Shape {
//    
////    var controlPoint1: CGPoint = CGPoint(x: 100, y: 100)
////    var controlPoint2: CGPoint = CGPoint(x: 100, y: 300)
//
//    
//    func path(in rect: CGRect) -> Path {
//        Path { path in
//            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
//            path.addArc(
//                center: CGPoint(x: rect.midX, y: rect.midY),
//                radius: rect.width / 2,
//                startAngle: Angle(degrees: 0),
//                endAngle: Angle(degrees: 180),
//                clockwise: true)
//        }
//    }
//}
