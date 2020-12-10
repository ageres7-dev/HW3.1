//
//  Light.swift
//  HW3.1
//
//  Created by Сергей on 10.12.2020.
//

import SwiftUI

struct Light: View {
    let color: UIColor
    var opacity: Double = 0.3
    
    var body: some View {
        Color(color)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 10))
            .opacity(opacity)
            .padding()
            .shadow(radius: 10)
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
        Light(color: .red)
    }
}
