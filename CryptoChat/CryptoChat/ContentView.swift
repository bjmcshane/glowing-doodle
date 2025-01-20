//
//  ContentView.swift
//  CryptoChat
//
//  Created by Brendan McShane on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var pounds = ""
    @State private var kilograms = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Weight Converter")
                .font(.largeTitle)
                .padding()
            
            TextField("Enter pounds", text: $pounds)
                //.keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onChange(of: pounds) { newValue in
                    if let poundsValue = Double(newValue) {
                        let kgValue = poundsValue * 0.453592
                        kilograms = String(format: "%.2f", kgValue)
                    } else {
                        kilograms = ""
                    }
                }
            
            Text("\(kilograms.isEmpty ? "0.00" : kilograms) kg")
                .font(.title)
                .foregroundColor(.blue)
            
            Text("1 pound = 0.453592 kilograms")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
