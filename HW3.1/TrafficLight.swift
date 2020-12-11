//
//  ContentView.swift
//  HW3.1
//
//  Created by Сергей on 10.12.2020.
//

import SwiftUI

struct TrafficLight: View {
    
    @State private var currentLight = CurrentLight.red
    
    @State private var redLight = Light(color: .red)
    @State private var yellowLight = Light(color: .yellow)
    @State private var greenLight = Light(color: .green)
    
    @State private var labelButton = "START"
    
    private var switchLightAction: () {
        labelButton = "NEXT"
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight.isOn = false
            redLight.isOn = true
        case .yellow:
            currentLight = .green
            redLight.isOn.toggle()
            yellowLight.isOn.toggle()
        case .green:
            currentLight = .red
            yellowLight.isOn.toggle()
            greenLight.isOn.toggle()
        }
    }
    
    var body: some View {
        VStack {
            
            VStack {
                redLight
                yellowLight
                greenLight
            }
            
            Spacer(minLength: 100)
            
            Button(action: { switchLightAction }) {
                Text(labelButton)
                    .setBlueStyleButton()
            }
            .padding()
        }
    }
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
            .preferredColorScheme(.dark)
    }
}
