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
                TextFieldTemplate(warningText: "First Name cannot be empty", submitHandler: validateTextFields, value: $firstName, warning: $firstNameEmptyWarning)
                TextFieldTemplate(warningText: "Last Name cannot be empty", submitHandler: validateTextFields, value: $lastName, warning: $lastNameEmptyWarning)
                TextFieldTemplate(warningText: "Email Address cannot be empty", submitHandler: validateTextFields, value: $emailAddress, warning: $emailAddressEmptyWarning)
                TextFieldTemplate(warningText: "Password cannot be empty", submitHandler: validateTextFields, value: $password, warning: $passwordEmptyWarning)
                Button {
                    validateTextFields()
                } label: {
                    ClaimButton()
                }
                Spacer()
                    .frame(height: 10)
                TermsAndServices()
            }
            .textFieldStyle(CustomTextFieldStyle())
            .textInputAutocapitalization(.never)
            .padding(20)
        }
        .cornerRadius(10)
        .padding(.horizontal, 20)
        .scaledToFit()
        .frame(maxWidth: .infinity)
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
