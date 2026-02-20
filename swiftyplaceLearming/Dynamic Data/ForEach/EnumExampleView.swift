//
//  EnumExampleView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/20/26.
//

import SwiftUI

struct EnumExampleView: View {
    
    enum WeatherType: String, CaseIterable, Identifiable {
        case sunny = "Sunny"
        case cloudy = "Cloudy"
        case rainy = "Rainy"
        case snow = "Snowy"
        
        var id: String {
            self.rawValue
        }
    }
    
    enum EatingPreference: CaseIterable, Identifiable {
        case sweet
        case spicy
        case salty
        
        var id: Self { return self }
        
        var displayName: String {
            switch self {
            case .sweet: "Sweet"
            case .spicy: "Spicy"
            case .salty: "Salty"
            }
        }
    }
    
    @State private var selectedWeatherType = WeatherType.sunny
    
    @State private var selectedEatiobPreference: EatingPreference = .salty
    
    var body: some View {
        VStack {
            Text("Select the Weather")
                .font(.title)
            
            Picker("Select", selection: $selectedWeatherType) {
                ForEach(WeatherType.allCases) { type in
                    Text(type.rawValue)
                        .tag(type)
                }
            }
            .pickerStyle(.segmented)
            
            Picker("Eating", selection: $selectedEatiobPreference) {
                ForEach(EatingPreference.allCases) { pref in
                    Text(pref.displayName)
                }
            }
            .pickerStyle(.segmented)
            
        }
        .padding()
    }
}

#Preview {
    EnumExampleView()
}
