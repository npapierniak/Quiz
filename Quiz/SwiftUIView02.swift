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
                Text("Question 2").bold().font(.title2)
                Image("Legs_Horse").resizable().frame(width:500, height: 240)
                    .padding()
                Text("What walks on four legs")
                    .font(Font.custom("Copperplate", size: 27))
                Text("in the morning, two legs in")
                    .font(Font.custom("Copperplate", size: 27))
                Text("the afternoon, three legs")
                    .font(Font.custom("Copperplate", size: 27))
                Text("in the evening, and no legs at night?")
                    .font(Font.custom("Copperplate", size: 27))
                    .multilineTextAlignment(.center)
                HStack{
                    Button("Time"){
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
                    Button("Humans"){
                        answers.right += 1
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
                }
                HStack{
                    Button("Race"){
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
                    Button("Skin-Walker"){
                        goToNextView = true
                    }
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
                }
                Spacer()
                NavigationLink(destination: getDestinationView(), isActive: $goToNextView) {
                    EmptyView()
                }
            }
        }
    
    func getDestinationView() -> SwiftUIView03 {
        // Initialize the destination view and pass necessary parameters
        return SwiftUIView03(answer: Answers())
    }
}

struct SwiftUIView02_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView02(answer : Answers())
    }
}

struct CustomButtonStyle1: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 80)
            .font (Font.custom("Marker Felt", size: 24))
            .padding () .background(.red).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.black)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
