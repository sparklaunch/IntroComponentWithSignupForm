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
    @State private var emailAddressInvalidWarning: Bool = false
    @State private var passwordEmptyWarning: Bool = false
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 10) {
                TextFieldTemplate(placeholder: "First Name", warningText: "First Name cannot be empty", submitHandler: validateTextFields, value: $firstName, warning: $firstNameEmptyWarning)
                TextFieldTemplate(placeholder: "Last Name", warningText: "Last Name cannot be empty", submitHandler: validateTextFields, value: $lastName, warning: $lastNameEmptyWarning)
                EmailTextFieldTemplate(invalidWarningText: "Email Address is invalid", emptyWarningText: "Email Address cannot be empty", submitHandler: validateEmailAddress, value: $emailAddress, emptyWarning: $emailAddressEmptyWarning, invalidWarning: $emailAddressInvalidWarning)
                TextFieldTemplate(placeholder: "Password", warningText: "Password cannot be empty", submitHandler: validateTextFields, value: $password, warning: $passwordEmptyWarning)
                Button {
                    validateTextFields()
                    validateEmailAddress()
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
            passwordEmptyWarning = password.isEmpty
        }
    }
    func validateEmailAddress() -> Void {
        let emailRegex: String = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        let emailPredicate: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        withAnimation(.easeInOut(duration: 0.3)) {
            emailAddressEmptyWarning = false
            emailAddressInvalidWarning = false
        }
        if emailAddress.isEmpty {
            withAnimation(.easeInOut(duration: 0.3)) {
                emailAddressEmptyWarning = true
            }
        }
        else if !emailPredicate.evaluate(with: emailAddress) {
            withAnimation(.easeInOut(duration: 0.3)) {
                emailAddressInvalidWarning = true
            }
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
