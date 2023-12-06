//
//  SwiftUIView01.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

struct SwiftUIView01: View {
    let phrase : String
    var answer : Answers
    @State private var answers = Answers()
    @State private var goToNextView = false
    var body: some View {
        ZStack{
            Color.pink.opacity(0.3).ignoresSafeArea()
            VStack{
                Text("Question 1").bold().font(.title2)
                Image("skin_structure").resizable().frame(width:500, height: 400)
                    .padding()
                Text("Human skin")
                    .font(.title)
                Text("regenerates every week.")
                    .font(.title)
                HStack{
                    Button("True"){
                        goToNextView = true
                    }
                    .padding()
                    Button("False"){
                        goToNextView = true
                        GlobalData.shared.right += 1
                    }
                }
                .buttonStyle(CustomButtonStyle())
                Spacer()
                NavigationLink(destination: SwiftUIView02(answer : Answers()), isActive: $goToNextView) {
                    EmptyView()
                }
            }
        }
    }
}

struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Question 1", answer : Answers())
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 80)
            .font (Font.custom("Marker Felt", size: 24))
            .padding () .background(.black).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.white)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
