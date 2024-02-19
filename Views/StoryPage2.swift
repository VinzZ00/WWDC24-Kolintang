//
//  StoryPage.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 07/02/24.
//

// https://www.freepik.com/free-vector/arabesque-decorative-brocade_6541342.htm#query=batik&position=6&from_view=keyword&track=sph&uuid=46d691cc-456f-4594-b7bb-80e81bf36ef1
// https://www.vecteezy.com/free-vector/camp-fire



import SwiftUI

struct StoryPage2: View {
    
    var body: some View {
        VStack {

            VStack(alignment: .leading) {
                
                buildText(text: "With head held high and determined eyes, the man eagerly accepts the challenge before him, ready to overcome obstacles with courage and unwavering determination. In the deep dense forest, he traveled in search of the musical instrument meant by his lover. And when night came, a miracle happened. It occurred when the young fellow tried to keep himself warm at night. He chopped wood and dried it for a fire. After the wood had dried, he threw it to the ground. Surprisingly, when the wood hit the ground, it produced a melodious sound that filled him with joy because he had finally found the instrument meant by Lintang.")
                    .padding(.bottom, 10)
                
                
                buildText(text: "With his exceptional skill, he has the ability to craft something remarkable and unique, seamlessly blending his expertise and creativity in a beautiful manner, And even as he does it, it produces a melodious sound.")
                    .padding(.bottom, 10)
                
                buildText(text: "With the sound echoing throughout the forest, many wondered what it was. A few hunters who heard the melodious sound searched for the place where the sound came from, and they found Makasiga in a very critical situation. It was because of the lack of nutrition that he had consumed; he looked very pale, lethargic, sick, and gravely ill. The hunters then rushed Makasiga back to the village. Even though Lintang was very satisfied and loved the instrument that was brought by Makasiga, In the end, Makasiga died due to his illness and left Lintang alone. She was devastated because she had lost the love of her life, and not long after that, she followed her beloved one to the afterlife. The instrument brought by Makasiga is the first Kolintang that we know of today.")
            }
            .padding(.top, 40)
            .padding(.bottom, 10)
            .padding(.leading, 16)
            .padding(.trailing, 16)
            Spacer()
            
            HStack(alignment: .bottom) {
                
                Image("flame")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.leading, 20)
                
                Spacer()
                Text("Moral of the story : \n\"Dream big, but remember: a balanced life adds depth to your journey. Taking care of yourself isn't just wise; it's the secret sauce that makes your ambitions truly shine.\"")
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
                    Text("2")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                }
                .padding(.trailing, 16)
                
            }
            .padding(.bottom, 10)
        }
        .background{
            VStack{
                HStack {
                    Spacer()
                    Image("batik2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width)
                        .opacity(0.2)
                    Spacer()
                }
            }.background(Color.init(hex: "#A7F683").opacity(0.2))
        }
    }
    
    @ViewBuilder
    func buildText(text : String) -> some View {
        HStack{
            Text(text)
                .font(.system(size: 29))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
        }.padding(.bottom, 10)
    }
    
}



