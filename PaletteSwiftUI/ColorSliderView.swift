//
//  ColorSliderView.swift
//  PaletteSwiftUI
//
//  Created by Глеб Зобнин on 18.12.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1){
        } minimumValueLabel: {
            Text("\(value.formatted())").foregroundStyle(.white)
        } maximumValueLabel: {
            Text("").foregroundStyle(.red)
        }
        .tint(color)
    }
}

#Preview {
    ColorSliderView(value: .constant(0.5), color: .red)
}
