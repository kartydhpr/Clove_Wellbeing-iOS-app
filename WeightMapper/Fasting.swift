//
//  Fasting.swift
//  WeightMapper
//
//  Created by Karteikay Dhuper on 6/28/22.
//

import SwiftUI

struct Fasting: View {
    var body: some View {
        ScrollView{
                VStack(alignment: .leading, spacing:7           ){
                    Text("Intermittent Fasting")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.orange)
                    Text("Start a fast!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                }
                .frame(width: 350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)
                
                // Vertical Stack Card for Weight Mapping
                
                VStack(alignment: .leading, spacing: 16.0) {
                    Text("13hr Circadian Rhythm TRF")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.orange)
                   
                    
                }
                .padding(.all)
                .frame(width: 350.0, height: 400)
                .background(Color(hue: 1.0, saturation: 0.015, brightness: 0.155, opacity: 0.595))
                .cornerRadius(18)
                
                
               

        }
    }
}

struct Fasting_Previews: PreviewProvider {
    static var previews: some View {
        Fasting()
            .preferredColorScheme(.dark)
    }
}
