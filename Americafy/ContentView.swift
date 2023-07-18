//
//  ContentView.swift
//  Americafy
//
//  Created by Nacho Alaves on 18/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var meters = 0.0
    
    var body: some View {
        NavigationView {
            Form {
                // Input the number of meters
                Section {
                    TextField("Distance in meters", value: $meters, format: .number)
                        .keyboardType(.decimalPad)
                } header: {
                    Text("Meters")
                }
                
                // OUTPUT
                
                Section {
                    Text((meters / 1000), format: .number)
                } header: {
                    Text("Kilometers")
                }
                
                Section {
                    Text((meters * 3.281), format: .number)
                } header: {
                    Text("Feet")
                }
                
                Section {
                    Text((meters * 1.094), format: .number)
                } header: {
                    Text("Yards")
                }
                
                Section {
                    Text((meters / 1609), format: .number)
                } header: {
                    Text("Miles")
                }
                
                
                
                
            }
            .navigationTitle("Americafy")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
