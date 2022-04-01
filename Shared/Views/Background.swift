//
//  Background.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            Image(decorative: "Background")
                .resizable()
                .scaledToFill()
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
            .previewLayout(.sizeThatFits)
    }
}
