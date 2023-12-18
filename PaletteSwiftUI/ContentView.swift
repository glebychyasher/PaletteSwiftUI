//
//  ContentView.swift
//  PaletteSwiftUI
//
//  Created by Глеб Зобнин on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = 128.0
    @State private var greenValue = 128.0
    @State private var blueValue = 128.0
    
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 300, alignment: .bottom)
                    .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(.white, lineWidth: 8))
                    .foregroundStyle(Color(red: redValue/255,
                                           green: greenValue/255,
                                           blue: blueValue/255))
                ColorSliderView(value: $redValue, color: .red)
                ColorSliderView(value: $greenValue, color: .green)
                ColorSliderView(value: $blueValue, color: .blue)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
