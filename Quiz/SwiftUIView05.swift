//
//  SwiftUIView05.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 12/6/23.
//

import SwiftUI

struct SwiftUIView05: View {
    let answer : Answers
    @State private var goToNextView = false
    @State private var answers = Answers()
    var body: some View {
        VStack{

            Text("Thank you for taking the quiz!!")
                .font(Font.custom("Kohinoor Telugu", size: 30))
                .padding()
            Text("Here are your results")
                .font(Font.custom("Kohinoor Telugu", size: 30))
                .padding()
            Text("You got \(GlobalData.shared.right) out of 4 questions right")
                .font(Font.custom("Kohinoor Telugu", size: 30))
                .padding()
            if GlobalData.shared.right < 2
            {
                Text("You may need to study...")
                    .font(Font.custom("Kohinoor Telugu", size: 30))
                    .padding()
                Button("Round 2?"){
                    GlobalData.shared.right = 0
                    goToNextView = true
                }
                .buttonStyle(CustomButtonStyle4())
            }
            if GlobalData.shared.right == 2
            {
                Text("50% isnt that bad...")
                    .font(Font.custom("Kohinoor Telugu", size: 30))
                    .padding()
            }
            if GlobalData.shared.right == 3
            {
                Text("Hey, not bad at all!")
                    .font(Font.custom("Kohinoor Telugu", size: 30))
                    .padding()
            }
            if GlobalData.shared.right == 4
            {
                Text("Great Job!!!")
                    .font(Font.custom("Kohinoor Telugu", size: 30))
                    .padding()
            }
            NavigationLink(destination: ContentView(), isActive: $goToNextView) {
                EmptyView()
            }
            Spacer()
        }
    }
}

struct SwiftUIView05_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView05(answer : Answers())
    }
}

struct CustomButtonStyle4: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 100)
            .font (Font.custom("Marker Felt", size: 26))
            .padding () .background(.blue).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.white)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
