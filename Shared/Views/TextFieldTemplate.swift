//
//  TextFieldTemplate.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/02.
//

import SwiftUI

struct TextFieldTemplate: View {
    let warningText: String
    let submitHandler: () -> Void
    @Binding var value: String
    @Binding var warning: Bool
    var body: some View {
        VStack(spacing: 5) {
            ZStack {
                TextField("First Name", text: $value)
                    .keyboardType(.default)
                    .onSubmit {
                        submitHandler()

                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .strokeBorder(Color("BackgroundColor").opacity(warning ? 1 : .zero), lineWidth: 2))
                HStack {
                    Spacer()
                    WarningIcon()
                        .padding(.horizontal, 30)
                        .opacity(warning ? 1 : .zero)
                }
            }
            HStack {
                Spacer()
                Text(warningText)
                    .font(.caption)
                    .fontWeight(.regular)
                    .foregroundColor(Color("BackgroundColor"))
                    .italic()
                    .opacity(warning ? 1 : .zero)
            }
        }
    }
}
