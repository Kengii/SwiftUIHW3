//
//  StarterView.swift
//  SwiftUIHW3
//
//  Created by Владимир Данилович on 7.04.22.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Group {
            if user.isRegistration {
                ContentView()
            } else {
                RegistrationView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
