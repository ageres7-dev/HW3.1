//
//  Light.swift
//  HW3.1
//
//  Created by Сергей on 10.12.2020.
//

import SwiftUI

struct Light: View {
    let color: UIColor
    var isOn = false
    
//    private var opacity: Double {
//        isOn ? 1.0 : 0.3
//    }
    
    var body: some View {
        Color(color)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: 10)

            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .opacity(isOn ? 1.0 : 0.3)
                        .padding()
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
        Light(color: .red)
    }
}
