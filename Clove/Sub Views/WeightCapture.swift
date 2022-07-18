//
//  WeightCapture.swift
//  WeightMapper
//
//  Created by Karteikay Dhuper on 6/27/22.
//

import SwiftUI
import Lottie


struct WeightCapture: View {
    
    @State var weight: Double = 0.00
    @ObservedObject var dataStore = weightStore()
    
    var body: some View {
        ScrollView{

            VStack(alignment: .leading, spacing:7    ){
                Text("Let's get tracking!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Primary"))
            
                Text("Add your weight below")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                
            }
            .padding(.leading, -35.0)
            .padding(.top, 20.0)
            .padding(.bottom)
            .frame(width: 350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)
            
            
            VStack(alignment: .leading, spacing: 25) {
                HStack(spacing: 20){
                    Stepper(value: $weight, in: 0...1000.00, step:1) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
                    }
                   .padding(.top, 50)
                    .labelsHidden()
                    .rotationEffect(.degrees(-90))
                    
                    
                    Text("\(weight, specifier: "%.1f")")
                    .font(.system(size: 50))
                    .fontWeight(.black)
                    .foregroundColor(Color("Primary"))
                    .frame(width: 200)

//                    TextField("Weight", value: $weight, formatter: NumberFormatter())
//                        .keyboardType(.numberPad)
//                        .multilineTextAlignment(.center)
//                        .font(.system(size: 50))
//                        .frame(width: 200)
//                        .foregroundColor(Color("Primary"))
//                        .border(Color("Primary"))
//
//                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    
                    Stepper(value: $weight, in: 0...1000.00, step: 0.1) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
                        
                    }
                    .padding(.top, -45)
                    .labelsHidden()
                    .rotationEffect(.degrees(-90))
                    
                }
                .padding(.top,50)
                Text("kilograms")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.leading, 130.0)
            
            }
            .padding(.top, 20.0)
            .frame(width: 350.0, height: 300)
            .background(Color(hue: 1.0, saturation: 0.022, brightness: 0.221, opacity: 0.595))
            .cornerRadius(18)
            
            Slider(value: $weight, in: 0...200)
                    .frame(width: 350)
                    .tint(Color("Primary"))
            
            Button(action:
            {
                print("add button clicked")
                print("here is the new weight:\(weight)")
            })
            {
                Text("Save")
                .font(.title2)
                .fontWeight(.heavy)
                
                Image(systemName: "square.and.arrow.down.on.square.fill")
            }
            .frame(width: 350.0, height: 60.0)
            .background(Color("Primary"))
            .foregroundColor(Color.black)
            .cornerRadius(18)
            .padding(.top, 7.0)
            

            
        }
        .padding(.top, 50)
    }
}

struct WeightCapture_Previews: PreviewProvider {
    static var previews: some View {
        WeightCapture()
            .preferredColorScheme(.dark)
    }
}

