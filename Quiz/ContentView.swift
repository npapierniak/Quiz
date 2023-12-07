//
//  ContentView.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

class GlobalData {
    static let shared = GlobalData()
    var right = 0
    private init() {}
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.opacity(0.8).ignoresSafeArea().background()
                VStack {
                    Image("Quiz1").resizable().frame(width:500, height: 400)
                    NavigationLink("Start Quiz", destination : SwiftUIView01(phrase: "Question 1"))
                        .font(.largeTitle).bold()
                        .foregroundColor(Color.white)
                }
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
