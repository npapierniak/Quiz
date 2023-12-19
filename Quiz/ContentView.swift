//
//  ContentView.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

class GlobalData { //creates a class i can use throught my views
    static let shared = GlobalData() //creates a shared variable that is able to be used
    var right = 0//this is the variable used
    private init() {}// makes it so there isnt another creation of this class
}

struct ContentView: View {
    @State private var goToNextView: Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.opacity(0.8).ignoresSafeArea().background()
                VStack {
                    Image("Quiz1").resizable().frame(width:500, height: 400)
                    NavigationLink("Start Quiz", destination:  SwiftUIView01(phrase: "Question 1", nextView: $goToNextView), isActive: $goToNextView)
                        .font(.largeTitle).bold()
                        .foregroundColor(Color.white)//Sends you to the next screen
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
