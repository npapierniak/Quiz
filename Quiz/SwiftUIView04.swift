//
//  SwiftUIView04.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView04: View {
    let answer : Answers
    @State private var goToNextView = false
    @State private var answers = Answers()
    var body: some View {
            VStack {
                Text("Question 4").font(.title2).bold()
                Image("Painter").resizable().frame(width:500, height: 260)
                    .padding()
                    .padding()
                Text("Which artist is known for cutting off his own ear?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                HStack{
                    Button("Pablo Picasso"){
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle3())
                    .padding()
                    Button("Vincent van Gogh"){
                        answers.right += 1
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle3())
                    .padding()
                }
                HStack{
                    Button("Leonardo da Vinci"){
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle3())
                    .padding()
                    Button("Claude Monet"){
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle3())
                    .padding()
                }
                Spacer()
                NavigationLink(destination: SwiftUIView05(answer : Answers()), isActive: $goToNextView) {
                    EmptyView()
                }
            }
        }
    }

struct SwiftUIView04_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView04(answer : Answers())
    }
}

struct CustomButtonStyle3: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 75)
            .font (Font.custom("Marker Felt", size: 18))
            .padding () .background(.red).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.black)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
