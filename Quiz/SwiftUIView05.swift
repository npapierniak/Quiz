//
//  SwiftUIView05.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 12/6/23.
//

import SwiftUI

struct SwiftUIView05: View {
    @Binding var nextView : Bool //creates a boolean to see if you want to go to next view
    var body: some View {
        ZStack{
            Color.black.opacity(0.8).ignoresSafeArea().background()
            VStack{
                Text("Thank you for taking the quiz!!")
                    .font(Font.custom("Gill Sans", size: 30))
                    .foregroundColor (.white)
                    .padding()
                Text("Here are your results")
                    .font(Font.custom("Gill Sans", size: 30))
                    .foregroundColor (.white)
                    .padding()
                Text("You got \(GlobalData.shared.right) out of 4 questions right")
                    .font(Font.custom("Gill Sans", size: 30))
                    .foregroundColor (.white)
                    .padding()
                if GlobalData.shared.right < 2
                {
                    Text("You may need to study...")
                        .font(Font.custom("Gill Sans", size: 30))
                        .foregroundColor (.white)
                        .padding()
                    Button("Round 2?")
                    {
                        nextView = false
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                    resetPoints()
                })
                        .buttonStyle(CustomButtonStyle4())
                }
                if GlobalData.shared.right == 2
                {
                    Text("50% isnt that bad...")
                        .font(Font.custom("Gill Sans", size: 30))
                        .foregroundColor (.white)
                        .padding()
                    Button("Round 2?")
                    {
                        nextView = false
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                    resetPoints()
                })
                        .buttonStyle(CustomButtonStyle4())
                }
                if GlobalData.shared.right == 3
                {
                    Text("Hey, not bad at all!")
                        .font(Font.custom("Gill Sans", size: 30))
                        .foregroundColor (.white)
                        .padding()
                    Button("Round 2?")
                    {
                        nextView = false
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                    resetPoints()
                })
                        .buttonStyle(CustomButtonStyle4())
                }
                if GlobalData.shared.right == 4
                {
                    Text("Great Job!!!")
                        .font(Font.custom("Gill Sans", size: 30))
                        .foregroundColor (.white)
                        .padding()
                    Button("Round 2?")
                    {
                        nextView = false
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                    resetPoints()
                })
                        .buttonStyle(CustomButtonStyle4())
                }
                Spacer()
            }
        }
    }
    func resetPoints()
    {
        GlobalData.shared.right = 0
    }
}

struct SwiftUIView05_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView05(nextView: .constant(false))
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
