//
//  RegistrationView.swift
//  SwiftUIHW3
//
//  Created by Владимир Данилович on 7.04.22.
//

import SwiftUI

struct RegistrationView: View {

    @EnvironmentObject var user: UserManager
    @AppStorage("username") var userName: String = "Vova"

    var body: some View {
        VStack {
            TextField("Enter your name", text: $userName)
                .padding()
                .multilineTextAlignment(.center)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button(action: (registrationUser)) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }.padding()
        }
            .padding()
    }

    private func registrationUser() {
        if !userName.isEmpty {
            user.userName = userName
            user.isRegistration.toggle()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
