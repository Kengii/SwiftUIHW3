//
//  SwiftUIHW3App.swift
//  SwiftUIHW3
//
//  Created by Владимир Данилович on 7.04.22.
//

import SwiftUI

@main
struct SwiftUIHW3App: App {
    
    @StateObject private var user = UserManager()
    
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
