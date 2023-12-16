//
//  SwiftUIView02.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView02: View {
    @Binding var nextView : Bool //creates a boolean to see if you want to go to next view
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
                NavigationLink("Time", destination:  SwiftUIView03(nextView: $nextView))
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
                NavigationLink("Humans", destination:  SwiftUIView03(nextView: $nextView))
                    .simultaneousGesture(TapGesture().onEnded {
                        addPoint()
                    })
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
            }
            HStack{
                NavigationLink("Race", destination:  SwiftUIView03(nextView: $nextView))
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
                NavigationLink("SkinWalker", destination:  SwiftUIView03(nextView: $nextView))
                    .buttonStyle(CustomButtonStyle1())
                    .padding()
            }
            Spacer()
        }
    }
    func addPoint()
    {
        GlobalData.shared.right += 1
    }
}

struct SwiftUIView02_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView02(nextView: .constant(false))
    }
}

struct CustomButtonStyle1: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 130)
            .font (Font.custom("Marker Felt", size: 24))
            .padding () .background(.red).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.black)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
