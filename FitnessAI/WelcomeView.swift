//
//  WelcomeView.swift
//  FitnessAI
//
//  Created by Jonathan Airhart on 5/17/25.
//


import SwiftUI

struct WelcomeView: View {
    @State private var email: String = ""

    var body: some View {
        VStack(spacing: 32) {
            Spacer()

            // MARK: – Logo / title
            VStack(spacing: 8) {
                Text("App name")
                    .font(.title)
                    .bold()
                Text("Unlock Your\nAI Fitness Journey!")
                    .font(.headline)
                    .multilineTextAlignment(.center)
            }

            // MARK: – Email field + Continue
            VStack(spacing: 12) {
                TextField("email@domain.com", text: $email)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)

                NavigationLink("Continue") {
                    MainTabView()          // destination after sign-up (temp)
                }
                .buttonStyle(.borderedProminent)
                .disabled(email.isEmpty)
            }

            // MARK: – SSO buttons (static for now)
            VStack(spacing: 8) {
                SignInWithButton(label: "Continue with Google", systemImage: "globe")
                SignInWithButton(label: "Continue with Apple",  systemImage: "apple.logo")
            }

            Spacer(minLength: 40)

            Text("By clicking continue, you agree to our Terms of Service and Privacy Policy")
                .font(.footnote)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
        .navigationBarHidden(true)
    }
}

/// Reusable stub for SSO buttons
private struct SignInWithButton: View {
    let label: String
    let systemImage: String

    var body: some View {
        Button {
            // integrate later
        } label: {
            HStack {
                Image(systemName: systemImage)
                Text(label)
            }
            .frame(maxWidth: .infinity)
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    NavigationStack { WelcomeView() }
}
