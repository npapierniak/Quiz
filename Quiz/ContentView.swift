//
//  ContentView.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.purple.ignoresSafeArea().background()
                VStack {
                    Image("Quiz1").resizable().frame(width:500, height: 400)
                    NavigationLink("Start Quiz", destination : SwiftUIView01(phrase: "This is from the first view"))
                        .font(.largeTitle).bold()
                        .foregroundColor(Color.white)
                    Spacer()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
