//
//  ContentView.swift
//  paycomWeatherApp
//
//  Created by Josh Quaid on 7/18/22.
//

import SwiftUI

struct ContentView: View {
    
    var currentDay: CurrentDay = CurrentDay(location: "Tulsa, OK", status: "sunny", currentTemp: 999, lowTemp: 98, highTemp: 1000000)
    
    var body: some View {
        ZStack {
            // Zstack appears in the order you add elements
            // The background
            LinearGradient(gradient: Gradient(colors:[.blue, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            // Current day view
            CurrentDayView(currentDay: self.currentDay)
            
        }
    }
}


struct CurrentDayView: View {
    
    var currentDay: CurrentDay
    
    var body: some View {
        VStack(spacing: 0) {
            Text(self.currentDay.location)
                .font(.largeTitle)
                .padding()
            // Get the sf symbol name from the String+Ext in Extensions
            Image(systemName: self.currentDay.status.getImageName())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .symbolRenderingMode(.multicolor)
            Text("\(currentDay.currentTemp)°")
                .padding()
                .font(.system(size: 50,
                              weight: .medium,
                              design: .default))
            HStack {
                Text("\(currentDay.highTemp)°")
                LinearGradient(gradient: Gradient(colors: [currentDay.lowTemp.getTempColor(), currentDay.highTemp.getTempColor()                                                ]), startPoint: .leading, endPoint: .trailing)
                    .frame(width: 200, height: 20)
                    .cornerRadius(10)
                Text("\(currentDay.lowTemp)°")
            }
            Spacer()
            
            
        }    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
