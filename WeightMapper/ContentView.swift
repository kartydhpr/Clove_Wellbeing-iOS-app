//
//  ContentView.swift
//  WeightMapper
//
//  Created by Karteikay Dhuper on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView {
        
            WeightView()
                .tabItem {
                    Image(systemName: "chart.xyaxis.line").foregroundColor(Color("Primary"))
                    Text("Weight").foregroundColor(Color("Primary")) }
            
            WaterTracker()
                .tabItem{
                    Image(systemName: "drop.circle.fill")
                        .foregroundColor(Color(hue: 0.492, saturation: 1.0, brightness: 1.0))
                    Text("Water").foregroundColor(Color(hue: 0.492, saturation: 1.0, brightness: 1.0))
                    
                }
            
            Fasting()
                .tabItem{
                    Image(systemName: "timer").foregroundColor(Color("Primary"))
                    Text("Fasting").foregroundColor(Color("Primary")) }
            }
            .accentColor(Color("Primary"))

        }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
        
        
    }
}

