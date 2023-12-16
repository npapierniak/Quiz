//
//  SwiftUIView04.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView04: View {
    @Binding var nextView : Bool //creates a boolean to see if you want to go to next view
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
                NavigationLink("Pablo Picasso", destination:  SwiftUIView05(nextView: $nextView))
                    .buttonStyle(CustomButtonStyle3())
                    .padding()
                NavigationLink("Vincent van Gogh", destination:  SwiftUIView05(nextView: $nextView))
                    .simultaneousGesture(TapGesture().onEnded {
                    addPoint()
                })
                    .buttonStyle(CustomButtonStyle3())
                    .padding()
            }
            HStack{
                NavigationLink("Leonardo da Vinci", destination:  SwiftUIView05(nextView: $nextView))
                    .buttonStyle(CustomButtonStyle3())
                    .padding()
                NavigationLink("Claude Monet", destination:  SwiftUIView05(nextView: $nextView))
                    .buttonStyle(CustomButtonStyle3())
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

struct SwiftUIView04_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView04(nextView: .constant(false))
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
