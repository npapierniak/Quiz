//
//  SwiftUIView01.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

struct SwiftUIView01: View {
    let phrase : String
    @State private var goToNextView = false //creates a boolean to see if you want to go to next view
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
                        //sets the value of gotonextview as true so the navigation link knows you want to go to next view
                    }
                    .padding()
                    Button("False"){
                        goToNextView = true
                        GlobalData.shared.right += 1
                        //increments the amount of right answers you get within the shared vairable
                    }
                }
                .buttonStyle(CustomButtonStyle())
                Spacer()
                NavigationLink(destination: SwiftUIView02(), isActive: $goToNextView) {
                    //this makes boolean link, checks if you want to go to next view if $goToNextView is true it sends you to nect view
                    EmptyView()//Hides the link inside the button
                }
            }
        }
    }
}

struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Question 1")
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 80)//creates the size of the button
            .font (Font.custom("Marker Felt", size: 24))
            .padding () .background(.black).opacity (configuration.isPressed ? 0.0: 1.0)//changes color of butotn
            .foregroundColor (.white)//changes the text of the button
            .clipShape (RoundedRectangle (cornerRadius: 10))//makes it round
    }
}//This is just my custom button which changes a little for each page
