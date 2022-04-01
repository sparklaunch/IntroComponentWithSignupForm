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
                .frame(height: 80)
            Text("CLAIM YOUR FREE TRIAL")
                .tracking(1)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 30)
        }
        .cornerRadius(10)
        .scaledToFit()
        .shadow(color: .black.opacity(0.5), radius: 10, x: .zero, y: 10)
    }
}

struct ClaimButton_Previews: PreviewProvider {
    static var previews: some View {
        ClaimButton()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
