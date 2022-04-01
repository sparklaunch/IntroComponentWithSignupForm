//
//  PromotionCard.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct PromotionCard: View {
    let tryPeriod: Int
    let monthlyFee: Int
    var body: some View {
        ZStack {
            Color("CardColor")
            Group {
                Text("Try it free \(tryPeriod) days ")
                    .fontWeight(.bold) + Text("then $\(monthlyFee)\\mo, thereafter")
                    .fontWeight(.regular)
            }
            .fixedSize(horizontal: false, vertical: true)
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 30, leading: 50, bottom: 30, trailing: 50))
            .multilineTextAlignment(.center)
            .lineSpacing(5)
        }
        .cornerRadius(10)
        .padding(.horizontal, 20)
        .scaledToFit()
        .shadow(color: .black.opacity(0.5), radius: 10, x: .zero, y: 10)
    }
}

struct PromotionCard_Previews: PreviewProvider {
    static var previews: some View {
        PromotionCard(tryPeriod: 7, monthlyFee: 20)
            .padding()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
