//
//  ContentView.swift
//  MinahasaKolintang
//
//  Created by Elvin Sestomi on 07/02/24.
//


import SwiftUI
import Foundation

struct ContentView: View {
    
    @State var isEnterKolintang : Bool = false
    var body: some View {
        NavigationStack {
            PageViewUIKitRepresentable {
                isEnterKolintang = true
            }
            
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .navigationDestination(isPresented: $isEnterKolintang) {
                    KolintangView()
                        .toolbar(.hidden)
                }
        }.preferredColorScheme(.dark)
    }
}

struct PageViewUIKitRepresentable : UIViewControllerRepresentable {
    
    var buttonHandler : () -> Void
    
    init(buttonHandler: @escaping () -> Void) {
        self.buttonHandler = buttonHandler
    }
    
    typealias UIViewControllerType = UIKitPageView
    
    func makeUIViewController(context: Context) -> UIKitPageView {
        
        
        
        let pageView = UIKitPageView()
        pageView.pages = [
            UIHostingController(rootView: Cover()),
            UIHostingController(rootView: StoryPage1()),
            UIHostingController(rootView: StoryPage2()),
            UIHostingController(rootView: IntroductionPage(buttonHandler: self.buttonHandler)),
            
            
        ]
        return pageView
    }
    
    func updateUIViewController(_ uiViewController: UIKitPageView, context: Context) {
        // MARK: Update if needed
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
