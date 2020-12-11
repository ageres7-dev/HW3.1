//
//  ButtonTrafficLight.swift
//  HW3.1
//
//  Created by Сергей on 10.12.2020.
//

import SwiftUI

struct BlueStyleButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .padding()
            .fixedSize()
            .frame(width: 200)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .shadow(radius: 10)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 5)
            )
    }
    
}

extension View {
    func setBlueStyleButton() -> some View {
        self.modifier(BlueStyleButton())
    }
}


