//
//  WaterTracker.swift
//  WeightMapper
//
//  Created by Karteikay Dhuper on 6/28/22.
//

import SwiftUI

struct WaterTracker: View {
    
    var body: some View {
        ScrollView{
                VStack(alignment: .leading, spacing:7           ){
                    Text("Water")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(hue: 0.492, saturation: 1.0, brightness: 1.0))
                    Text("Track your water intake!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                }
                .padding(.leading, -100)
                .frame(width: 350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)
                
                // Vertical Stack Card for Weight Mapping
                
                VStack(alignment: .leading, spacing: 16.0) {
                    Text("Water Intake")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(hue: 0.492, saturation: 1.0, brightness: 1.0))
                   
                    
                }
                .padding(.all)
                .frame(width: 350.0, height: 400)
                .background(Color(hue: 1.0, saturation: 0.015, brightness: 0.155, opacity: 0.595))
                .cornerRadius(18)
                
                
               

        }
}

struct WaterTracker_Previews: PreviewProvider {
    static var previews: some View {
        WaterTracker()
            .preferredColorScheme(.dark)
    }
}
    
}
