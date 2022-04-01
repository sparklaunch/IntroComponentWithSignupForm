//
//  TermsAndServices.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/02.
//

import SwiftUI

struct TermsAndServices: View {
    var body: some View {
        Group {
            Text("By clicking the button, you are agreeing to our ")
                .fontWeight(.light)
                .foregroundColor(Color("TextColor")) + Text("Terms and Services")
                .fontWeight(.black)
                .foregroundColor(Color("BackgroundColor"))
        }
        .font(.caption)
        .multilineTextAlignment(.center)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct TermsAndServices_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndServices()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
