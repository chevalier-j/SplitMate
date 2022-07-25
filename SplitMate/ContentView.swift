//
//  ContentView.swift
//  WeSplitApp
//
//  Created by GibertJ on 23/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    TextField("Check Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "NZD"))
                            .keyboardType(.decimalPad)
                    
                    Picker("Number of peeps?", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) peeps")
                        }
                    }
                }
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "NZD"))
                }
            }
            .navigationTitle("SplitMate")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
