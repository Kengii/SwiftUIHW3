//
//  TimerCounter.swift
//  SwiftUIHW3
//
//  Created by Владимир Данилович on 7.04.22.
//

import Foundation
import Combine

class TimerCounter: ObservableObject {

    var objectWillChange = PassthroughSubject<TimerCounter, Never>()

    var counter = 3
    var timer: Timer?
    var buttonTitle = "Start"

    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }

        buttonTitleUpdate()
    }

    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }

        objectWillChange.send(self)

    }

    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }

    private func buttonTitleUpdate() {
        if buttonTitle == "Reset" {
            counter = 3
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }

        objectWillChange.send(self)
    }
}


