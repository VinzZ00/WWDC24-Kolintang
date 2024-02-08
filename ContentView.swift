//
//  ContentView.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 07/02/24.
//


import SwiftUI
import Foundation

struct ContentView: View {
    var audioManager = AudioManager.shared
    @State var isEnterKolintang : Bool = false
    var body: some View {
        NavigationStack {
            UIKitRepresentable{
                print("Todo, add Button handler to enter the Kolintang")
                isEnterKolintang = true
                print("Entering kolintang boolean : \(isEnterKolintang)")
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
    }
}

struct testingPage : View {
    
    @State var color : Color
    
    var body: some View {
        VStack {
            VStack{
                Spacer()
                HStack {
                   Spacer()
                    Text("Hello world")
                        .font(.system(size: 50))
                    Spacer()
                }
                Spacer()
            }.background(color);
        }
    }
}

struct UIKitRepresentable : UIViewControllerRepresentable {
    
    var buttonHandler : () -> Void
    
    init(buttonHandler: @escaping () -> Void) {
        self.buttonHandler = buttonHandler
    }
    
    typealias UIViewControllerType = UIKitPageView
    
    func makeUIViewController(context: Context) -> UIKitPageView {
        
        
        
        let pageView = UIKitPageView()
        pageView.pages = [
            UIHostingController(rootView: Cover()),
            UIHostingController(rootView: IntroductionPage()),
            UIHostingController(rootView: StoryPage(buttonHandler: buttonHandler))
            
        ]
        return pageView
    }
    
    func updateUIViewController(_ uiViewController: UIKitPageView, context: Context) {
        // MARK: Update if needed
    }
    
    
    
    
}
