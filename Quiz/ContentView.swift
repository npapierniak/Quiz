//
//  ContentView.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var answers = Answers()
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple.ignoresSafeArea().background()
                VStack {
                    Image("Quiz1").resizable().frame(width:500, height: 400)
                    NavigationLink("Start Quiz", destination : SwiftUIView01(phrase: "Question 1", answer: Answers()))
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
struct Answers {
    let question1 = 2
    let question2 = 4
    let question3 = 1
    var percent = 0.0
}
