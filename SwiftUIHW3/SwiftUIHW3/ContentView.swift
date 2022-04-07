//
//  ContentView.swift
//  SwiftUIHW3
//
//  Created by Владимир Данилович on 7.04.22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimerCounter()

    var body: some View {
        Text("Hello, \(user.userName)")
            .padding()
        Text("\(timer.counter)")
            .font(.title)
            .offset(x: 0, y: 200)
        Spacer()
        ButtonView()
            .environmentObject(timer)
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct ButtonView: View {
    
    @EnvironmentObject var timer: TimerCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 100)
        .background(Color.blue)
        .cornerRadius(30)
        .overlay(RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.green, lineWidth: 6))
    }
}
