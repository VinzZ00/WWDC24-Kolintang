//
//  KolintangView.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 08/02/24.
//

import SwiftUI

/* Reference : https://www.freepik.com/free-vector/damask-seamless-pattern-element-classical-luxury-old-fashioned-damask-ornament_4328331.htm#query=batik&position=0&from_view=keyword&track=sph&uuid=ed742097-7892-4ca8-9447-201f0393b93f
 */

struct KolintangView: View {
    
    var audioManager = AudioManager.shared
    
    @Environment(\.dismiss) var dismiss;
    
    var cressNotes : [String] =
    [
        "G3#", "A3#", "C4#", "D4#", "F4#", "G4#", "A4#",  "C5#", "D5#", "F5#", "G5#",  "A5#"
    ]
    
    var naturalNote : [String] =
    [
        "G3", "A3", "B3", "C4", "D4", "E4", "F4", "G4", "A4", "B4", "C5", "D5", "E5", "F5", "G5", "A5", "B5", "C6"
    ]
    
    var body: some View {
        VStack {
            HStack(alignment: .center){
                Button {
                    dismiss()
                } label: {
                    Image("back.custom")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.5)
                    
                    Text("Go Back")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(.black.opacity(0.5))
                        .padding(.leading, 20)
                }
                .frame(minWidth: 85, maxHeight: 72)
                Spacer()
            }
            .padding(.top, 16)
            .padding(.leading, 16)
            
            Spacer()
            ZStack {
                HStack(alignment: .top) {
                    ForEach(naturalNote, id : \.self) { note in
                        Button {
                            do {
                                try audioManager.playSound(for: note)
                            } catch {
                                print("error : \(error.localizedDescription)")
                            }
                        } label: {
                            Image(note)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
                .padding(.horizontal, 20)
                
                HStack(alignment: .bottom){
                    createButton(width: 72.21, height: 348, note: "G3#")
                        .offset(y: -300)
                    createButton(width: 62.21, height: 310, note: "A3#")
                        .offset(y: -320)
                        .padding(.trailing, 81)
                    
                    createButton(width: 62.21, height: 282, note: "C4#")
                        .offset(y: -320)
                    createButton(width: 62.21, height: 272, note: "D4#")
                        .offset(y: -320)
                        .padding(.trailing, 81)
                    
                    
                    createButton(width: 62.21, height: 231, note: "F4#")
                        .offset(y: -320)
                    createButton(width: 62.21, height: 223, note: "G4#")
                        .offset(y: -320)
                    createButton(width: 62.21, height: 213, note: "A4#")
                        .offset(y: -320)
                        .padding(.trailing, 81)
                    
                    createButton(width: 62.21, height: 176, note: "C5#")
                        .offset(y: -320)
                    createButton(width: 62.21, height: 166, note: "D5#")
                        .offset(y: -320)
                        .padding(.trailing, 81)
                    
                    createButton(width: 62.21, height: 148, note: "F5#")
                        .offset(y: -320)
                    createButton(width: 62.21, height: 138, note: "G5#")
                        .offset(y: -320)
                    createButton(width: 62.21, height: 128, note: "A5#")
                        .offset(y: -320)
                    
                    Spacer();
                }
                .offset(x: 47)
                .padding(.horizontal, 20)
            }
            .padding(.bottom, 100)
        }
        .background{
            VStack{
                Rectangle()
                    .foregroundStyle(Color.init(hex: "#3C2720"))
                    .frame(width: UIScreen.main.bounds.width, height: 780)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.top, 90)
            }.background{
                VStack{
                    Image("batik")
                        .resizable()
                        .scaledToFill()
                        .opacity(0.2)
                }.background(Color.init(hex: "#C4A286"))
            }
        }
    }
    
    @ViewBuilder
    func createButton(width w : CGFloat, height h : CGFloat, note : String) -> some View {
        Button {
            do {
                try audioManager.playSound(for: note)
            } catch {
                print("error : \(error.localizedDescription)")
            }
        } label: {
            Image(note)
                .resizable()
                .scaledToFit()
                .frame(width: w, height: h)
        }
    }
}
