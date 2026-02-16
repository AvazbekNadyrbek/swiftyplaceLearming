//
//  WeatherForcastView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import SwiftUI

struct WeatherForcastView: View {
    
    let forcastData = WeatherData.example()
    
    var body: some View {
        GroupBox("10-Day Forcast") {
            Grid(alignment: .trailing, horizontalSpacing: 10, verticalSpacing: 5) {
                ForEach(forcastData) { data in
                    GridRow(alignment: .center) {
                        
                        Text(data.weekday.name())
                            .gridColumnAlignment(.leading)
                        
                        Image(systemName: data.iconName)
                            .renderingMode(.original)
                            .imageScale(.large)
                            .gridColumnAlignment(.center)
                        
                        Text(String(data.lowTemperature))
                        
                        ProgressView(value: data.progress)
                        
                        Text(String(data.hightTemperature))
                    }
                    
                }
            }
        }
        .padding()
        
    }
}

fileprivate struct StackWeatherForcastView: View {
    let forcastData = WeatherData.example()
    
    var body: some View {
        GroupBox("10-Day Forcast") {
            VStack {
                ForEach(forcastData) { data in
                    HStack(alignment: .center) {
                        
                        Text(data.weekday.name())
                            .frame(width: 100)
                        
                        Image(systemName: data.iconName)
                            .renderingMode(.original)
                            .imageScale(.large)
                            .gridColumnAlignment(.center)
                        
                        Text(String(data.lowTemperature))
                        
                        ProgressView(value: data.progress)
                        
                        Text(String(data.hightTemperature))
                    }
                    
                }
            }
        }
        .padding()
        
    }
}

#Preview {
    WeatherForcastView()
}

#Preview("Stack") {
    StackWeatherForcastView()
}
