//
//  ClaimButton.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct ClaimButton: View {
    var body: some View {
        ZStack {
            Color("ButtonColor")
            Text("CLAIM YOUR FREE TRIAL")
                .tracking(1)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(30)
                .fixedSize(horizontal: false, vertical: true)
        }
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.5), radius: 10, x: .zero, y: 10)
    }
}

struct ClaimButton_Previews: PreviewProvider {
    static var previews: some View {
        ClaimButton()
            .previewLayout(.fixed(width: 500, height: 100))
            .padding()
    }
}
