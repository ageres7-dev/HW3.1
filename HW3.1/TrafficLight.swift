//
//  ContentView.swift
//  HW3.1
//
//  Created by Сергей on 10.12.2020.
//

import SwiftUI

struct TrafficLight: View {
    
    @State private var labelButton = "START"
    @State private var currentLight = CurrentLight.red
    @State private var redLightIsOn = false
    @State private var yellowLightIsOn = false
    @State private var greenLightIsOn = false
    
    private var switchLightAction: () {
        labelButton = "NEXT"
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightIsOn = false
            redLightIsOn = true
        case .yellow:
            currentLight = .green
            redLightIsOn.toggle()
            yellowLightIsOn.toggle()
        case .green:
            currentLight = .red
            yellowLightIsOn.toggle()
            greenLightIsOn.toggle()
        }
    }
    
    var body: some View {
        VStack {
            
            VStack {
                Light(color: .red, isOn: redLightIsOn)
                Light(color: .yellow, isOn: yellowLightIsOn)
                Light(color: .green, isOn: greenLightIsOn)
            }
            
            Spacer(minLength: 100)
            
            Button(action: { switchLightAction }) {
                Text(labelButton)
                    .setBlueStyleButton()
            }
            .padding()
        }
    }    
}

extension TrafficLight {
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
