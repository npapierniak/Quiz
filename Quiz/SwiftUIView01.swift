//
//  SwiftUIView01.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

struct SwiftUIView01: View {
    let phrase : String
    var body: some View {
        VStack{
            Text(phrase)
                .font(.title).bold()
                .padding()
            Spacer()
        }
    }
}

struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Question 1")
    }
}
