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
    
    @State private var labelButton = "Start"
    
    var body: some View {
        VStack {
            
            VStack {
                redLight
                yellowLight
                greenLight
            }
            
            Spacer(minLength: 100)
            
            Button(action: {
                labelButton = "Next"
                
                switch currentLight {
                
                case .red:
                    currentLight = .yellow
                    greenLight.isOn = false
                    redLight.isOn = true
                case .yellow:
                    currentLight = .green
                    redLight.isOn = false
                    yellowLight.isOn = true
                case .green:
                    currentLight = .red
                    yellowLight.isOn = false
                    greenLight.isOn = true
                }
                
            }) {
                Text(labelButton)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 140)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white, lineWidth: 8)
                    )
                    .background(Color.blue)
                    .cornerRadius(16)
                    .shadow(radius: 10)
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
            
    }
}
