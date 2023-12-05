//
//  SwiftUIView03.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView03: View {
    let answer : Answers
    @State private var goToNextView = false
    @State private var answers = Answers()
    var body: some View {
            VStack{
                Text("What has 4 legs in the beginning, 2 in the middle, and 3 at the end?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(destination: SwiftUIView03(answer : Answers()), isActive: $goToNextView) {
                                EmptyView() // EmptyView used as label as it's invisible
                            }
        }
    }
}

struct SwiftUIView03_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView03(answer : Answers())
    }
}
