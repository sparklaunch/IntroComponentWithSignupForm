//
//  CustomTextFieldStyle.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/02.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .foregroundColor(Color("TextColor"))
            .padding(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .strokeBorder(Color("BorderColor"), lineWidth: 2)
            )
    }
}
