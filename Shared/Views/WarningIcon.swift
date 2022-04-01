//
//  WarningIcon.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/02.
//

import SwiftUI

struct WarningIcon: View {
    var body: some View {
        Image(decorative: "Error")
            .resizable()
            .frame(width: 32, height: 32)
    }
}

struct WarningIcon_Previews: PreviewProvider {
    static var previews: some View {
        WarningIcon()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
