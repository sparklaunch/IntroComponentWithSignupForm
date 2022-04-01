//
//  Title.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct Title: View {
    let title: String
    let subtitle: String
    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .fixedSize(horizontal: false, vertical: true)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .lineSpacing(3)
                .multilineTextAlignment(.center)
        }
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: "Learn to code by watching others", subtitle: "See how experienced developers solve problems in real-time. Watching scripted tutorials is great. But understanding how developers think is invaluable.")
            .padding()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
