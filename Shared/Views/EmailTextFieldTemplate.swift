//
//  EmailTextFieldTemplate.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/02.
//

import SwiftUI

struct EmailTextFieldTemplate: View {
    let invalidWarningText: String
    let emptyWarningText: String
    let submitHandler: () -> Void
    @Binding var value: String
    @Binding var emptyWarning: Bool
    @Binding var invalidWarning: Bool
    private var warning: Bool {
        return emptyWarning || invalidWarning
    }
    var body: some View {
        VStack(spacing: 5) {
            ZStack {
                TextField("Email Address", text: $value)
                    .keyboardType(.emailAddress)
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
                Text(emptyWarning ? emptyWarningText : invalidWarningText)
                    .font(.caption)
                    .fontWeight(.regular)
                    .foregroundColor(Color("BackgroundColor"))
                    .italic()
                    .opacity(warning ? 1 : .zero)
            }
        }
    }
}
