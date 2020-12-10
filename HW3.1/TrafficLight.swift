//
//  ContentView.swift
//  HW3.1
//
//  Created by Сергей on 10.12.2020.
//

import SwiftUI

struct TrafficLight: View {
    
    var body: some View {
        var redLight = Light(color: .red)
        var yellowLight = Light(color: .yellow)
        var greenLight = Light(color: .green)
        
        VStack {
            
            VStack {
                redLight
                yellowLight
                greenLight
            }
            
            Spacer(minLength: 200)
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Start")
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
            
    }
}
