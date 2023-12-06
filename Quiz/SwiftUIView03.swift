//
//  SwiftUIView03.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView03: View {
    let answer : Answers
    @State private var goToNextViews = false
    @State private var answers = Answers()
    var body: some View {
        ZStack {
            Color.pink.opacity(0.3).ignoresSafeArea()
            VStack{
                Text("Question 3").bold().font(.title2)
                Image("Squirrel").resizable().frame(width:500, height: 260)
                    .padding()
                    .padding()
                Text("Squirrels can't take fall damage.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                HStack{
                    Button("True"){
                        answers.right += 1
                        goToNextViews = true
                    }
                    .padding()
                    Button("False"){
                        goToNextViews = true
                    }
                }
                .buttonStyle(CustomButtonStyle2())
                Spacer()
                NavigationLink(destination: SwiftUIView04(answer : Answers()), isActive: $goToNextViews) {
                    EmptyView()
                }
            }
        }
    }
}

struct SwiftUIView03_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView03(answer : Answers())
    }
}

struct CustomButtonStyle2: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 66)
            .font (Font.custom("Zapfino", size: 20))
            .padding () .background(.black).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.white)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
