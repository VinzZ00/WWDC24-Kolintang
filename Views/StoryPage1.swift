//
//  StoryPage1.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 09/02/24.
//

/* Reference :
https://katadata.co.id/safrezi/berita/6194cef014a64/sejarah-alat-musik-kolintang-alunan-penyambut-tamu-di-minahasa
 
https://www.freepik.com/free-vector/set-wood-logs-stubs-white-background_29006581.htm
 */

import SwiftUI

struct StoryPage1: View {
    var body: some View {
        VStack {
            HStack {
                Text("The Story Of Kolintang\n")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                +
                Text("The Beatiful Tunes from Minahasa")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.top, 10)
            .padding(.bottom, 20)
            
            // MARK: Body
            VStack(alignment: .leading) {
                buildText(text: "Long ago, in my country Indonesia, there was a village named To Un Rano located in the north Sulawesi island, renowned for the captivating natural beauty of its charming lake and lush hills, but that's just the tip of the iceberg. In this village lived a young maiden whose beauty was known throughout the village. But that's not all, She was also gifted with a sweet and melodious voice. With this gift, she became a part of the village's entertainment scene, always stepping onto a stage filled with spotlights and creativity. Despite her fame, she was also the main focus of many fellows young men in the village.")
                    .padding(.bottom, 10)
                
                buildText(text: "Day by day, years pass. As Lintang grew up and matured, many men came to pursue her, seeking her hand in marriage. With lust in her heart, she encountered a young, handsome woodcarver artist named Makasiga. It was like love at first sight. The sparkle in their eyes told a story, and the smiles etched on their lips became a wordless language conveying the blossoming love between them. Through meaningful gazes and shared moments, they felt the heartbeat that united deep emotions within their souls. However, this love story came with a price. The young maiden played hard to get with his beloved one, and she would only accept the proposal with one condition: he had to find a musical instrument more melodious than the golden flute.")
                    .padding(.bottom, 10)
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            
            Spacer()
            
            
            HStack(alignment: .bottom) {
                Spacer()
                ZStack(alignment: .center) {
                    Image(systemName: "music.quarternote.3")
                        .resizable()
                        .opacity(0.1)
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Text("1")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                }
                .padding(.trailing, 16)
                
            }
            .padding(.bottom, 10)
        }
        .background{
            VStack {
                ZStack{
                    HStack{
                        Spacer()
                        Image("batik-mandala")
                            .resizable()
                            .scaledToFit()
                            .opacity(0.2)
                    }
                    
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
                            }.frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.height / 5)
                                .padding(.leading, 16)
                                .padding(.bottom, 32)
                            Spacer();
                        }
                    }
                }
            }.background(Color.init(hex: "#A7F683").opacity(0.2))
        }
    }
    
    @ViewBuilder
    func buildText(text : String) -> some View {
        HStack{
            Text(text)
                .font(.system(size: 30))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
        }.padding(.bottom, 10)
    }
}
