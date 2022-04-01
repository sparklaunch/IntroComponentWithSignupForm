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
    var body: some View {
        ZStack {
            Color.white
            VStack {
                TextField("First Name", text: $firstName)
                    .keyboardType(.default)
                TextField("Last Name", text:  $lastName)
                    .keyboardType(.default)
                TextField("Email Address", text: $emailAddress)
                    .keyboardType(.emailAddress)
                TextField("Password", text: $password)
                    .keyboardType(.default)
                Button {

                } label: {
                    ClaimButton()
                }
            }
            .textInputAutocapitalization(.never)
            .padding(20)
        }
        .cornerRadius(10)
        .padding(.horizontal, 20)
        .scaledToFit()
        .shadow(color: .black.opacity(0.5), radius: 10, x: .zero, y: 10)
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
