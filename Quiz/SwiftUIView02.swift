//
//  SwiftUIView02.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView02: View {
    let answer : Answers
    @State private var goToNextView = false
    @State private var answers = Answers()
    var body: some View {
        VStack{
            Image("Legs_Horse").resizable().frame(width:500, height: 270)
                .padding()
            Text("What walks on four legs in the morning, two legs in the afternoon, three legs in the evening, and no legs at night?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            HStack{
                Button("Time"){
                    goToNextView = true
                }
                .buttonStyle(CustomButtonStyle())
                .padding()
                Button("Humans"){
                    answers.right += 1
                    goToNextView = true
                }
                .buttonStyle(CustomButtonStyle())
                .padding()
            }
            HStack{
                Button("Race"){
                    goToNextView = true
                }
                .buttonStyle(CustomButtonStyle())
                .padding()
                Button("Skin-Walker"){
                    goToNextView = true
                }
                .buttonStyle(CustomButtonStyle())
            }
            Spacer()
            NavigationLink(destination: SwiftUIView03(answer : Answers()), isActive: $goToNextView) {
                EmptyView() // EmptyView used as label as it's invisible
            }
        }
    }
}

struct SwiftUIView02_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView02(answer : Answers())
    }
}

