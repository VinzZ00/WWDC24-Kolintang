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
    
    var body: some View {
        VStack {
            HStack {
                Text("The Story Of Kolintang From Indonesia")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .padding(.leading, 16)
                    .padding(.bottom, 20)
                    .foregroundStyle(Color.init(hex: "#484848"))
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.top, 10)
            .padding(.bottom, 10)
            
            VStack {
                buildText(text: "Long ago, there was a village named To Un Rano. In this village lived a gorgeous girl whose beauty was known throughout the village. It's no wonder that many young and strong men fell in love with her. This girl's name is Lintang, who is not just pretty but also gifted with a melodious voice. She became a famous singer, known for her sweet and melodious voice.")
                    .padding(.bottom, 10)
                
                buildText(text: "As Lintang grew up and matured, many men came to pursue her, wanting to marry her. She met a young, handsome man named Makasiga at a youth party. Makasiga is a woodcarver artist and was accepted by her with one condition: he had to find a musical instrument that is more melodious than the golden flute.")
                    .padding(.bottom, 10)
                
                buildText(text: "Day by day, Makasiga traveled in search of the musical instrument meant by Lintang in the forest. To keep himself warm at night, he chopped wood and dried it for a fire. After the wood had dried, he threw it to the ground. Surprisingly, when the wood hit the ground, it produced a melodious sound that filled him with joy because he had finally found the instrument meant by Lintang.")
                    .padding(.bottom, 10)
                
                buildText(text: "Not long after that, few hunters that hear the melodious sound, search for the place where the sounnd came from. And they found Makasiga in a very critical situation. During the search Makasiga often forgot to eat, and drink, he felt sick and gravely ill. the hunters then brought Makasiga back to the village. He Lintang very satisfy and love the instrument that was brought by Makasiga but due to his sickness, he passed away not long after they met and Lintang also fell sick and passed away not long after Makasiga die.")
            }
            .padding(.leading, 16)
            
            
            
            Spacer()
            
            HStack(alignment: .bottom) {
                Spacer()
                Text("\"Dream big, but remember: a balanced life adds depth to your journey. Taking care of yourself isn't just wise; it's the secret sauce that makes your ambitions truly shine.\"")
                    .foregroundStyle(Color.init(hex: "#FABF4D"))
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 25))
                    .fontWeight(.heavy)
                    .frame(width: 600)
                    .padding(.trailing, 50)
                    .padding(.bottom, 40)
                
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
                    }.frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.height / 5)
                        .padding(.leading, 16)
                    Spacer();
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            }.background(Color.init(hex: "#A7F683").opacity(0.2))
        }
    }
    
    @ViewBuilder
    func buildText(text : String) -> some View {
        HStack{
            Text(text)
                .foregroundStyle(Color.init(hex: "#484848"))
                .font(.system(size: 28))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
        }.padding(.bottom, 10)
    }
    
}



