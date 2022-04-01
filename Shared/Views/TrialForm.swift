//
//  TrialForm.swift
//  IntroComponentWithSignupForm (iOS)
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct TrialForm: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    @State private var firstNameEmptyWarning: Bool = false
    @State private var lastNameEmptyWarning: Bool = false
    @State private var emailAddressEmptyWarning: Bool = false
    @State private var passwordEmptyWarning: Bool = false
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 10) {
                VStack(spacing: 5) {
                    ZStack {
                        TextField("First Name", text: $firstName)
                            .keyboardType(.default)
                            .onSubmit {
                                validateTextFields()
                        }
                            .overlay(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .strokeBorder(Color("BackgroundColor").opacity(firstNameEmptyWarning ? 1 : .zero), lineWidth: 2))
                        HStack {
                            Spacer()
                            WarningIcon()
                                .padding(.horizontal, 30)
                                .opacity(firstNameEmptyWarning ? 1 : .zero)
                        }
                    }
                    HStack {
                        Spacer()
                        Text("First Name cannot be empty")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color("BackgroundColor"))
                            .italic()
                            .opacity(firstNameEmptyWarning ? 1 : .zero)
                    }
                }
                TextField("Last Name", text:  $lastName)
                    .keyboardType(.default)
                    .onSubmit {
                        validateTextFields()
                    }
                TextField("Email Address", text: $emailAddress)
                    .keyboardType(.emailAddress)
                    .onSubmit {
                        validateTextFields()
                    }
                TextField("Password", text: $password)
                    .keyboardType(.default)
                    .onSubmit {
                        validateTextFields()
                    }
                Button {
                    validateTextFields()
                } label: {
                    ClaimButton()
                }
            }
            .textFieldStyle(CustomTextFieldStyle())
            .textInputAutocapitalization(.never)
            .padding(20)
        }
        .cornerRadius(10)
        .padding(.horizontal, 20)
        .scaledToFit()
        .shadow(color: .black.opacity(0.5), radius: 10, x: .zero, y: 10)
    }
    func validateTextFields() -> Void {
        withAnimation(.easeInOut(duration: 0.3)) {
            firstNameEmptyWarning = firstName.isEmpty
            lastNameEmptyWarning = lastName.isEmpty
            emailAddressEmptyWarning = emailAddress.isEmpty
            passwordEmptyWarning = password.isEmpty
        }
    }
}

struct TrialForm_Previews: PreviewProvider {
    static var previews: some View {
        TrialForm()
            .padding()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
