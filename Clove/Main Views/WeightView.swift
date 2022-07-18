//
//  WeightView.swift
//  WeightMapper
//
//  Created by Karteikay Dhuper on 6/27/22.
//

import SwiftUI
import SwiftUICharts
import Lottie

struct WeightView: View {
    @State private var showingWeightCapture = false
//    @State var weightData: [Double] = [82.9,81.6,80.4,79.9,80.4]
    
    @ObservedObject var dataStore = weightStore()

    
    var body: some View {
        ScrollView(showsIndicators: false) {
            HStack {
                VStack(alignment: .leading, spacing:7           ){
                    HStack {
                        Text("Clove")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            .foregroundColor(Color("Primary"))
                        LottieView(name: "72436-green-leafs-loader", loopMode: .loop).frame(width:50)
                            .padding(.leading, -5)
                       
                    }
                        Text("Welcome back!")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.top, -30)
                        
                    }
                    .padding(.leading, -170)
                    .frame(width: 350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)
//                LottieView(name: "72436-green-leafs-loader", loopMode: .loop).frame(width:200)
//                    .padding(.leading, -150)
            }
                
                // Vertical Stack Card for Weight Mapping
                
                VStack(alignment: .leading, spacing: 16.0) {
                    
                    Text("Weight Map")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Primary"))
//                    Text("This is your weight map")
//                        .font(.title3)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white)
                    
                    LineChartView(data: $dataStore.weightData, title: "Kilograms", legend: "Scrub graph to view exact weight!", form: CGSize(width: 320, height: 250), rateValue: nil, dropShadow: false).foregroundColor(.primary)
                    
                    Text("This is a visual representation of the general trajectory of your weight since you started using Clove!").fontWeight(.semibold)
                    

                    
                }
                .padding(.all)
                .frame(width: 350.0, height: 430)
                .background(Color(hue: 1.0, saturation: 0.015, brightness: 0.155, opacity: 0.595))
                .cornerRadius(18)
                
                
                // Horizontal Stack Card for Weight Tracking
               
            Button(action:
            {
                print("button clicked")
                self.showingWeightCapture = true
            })
            {
                Text("What is your weight today?")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Primary"))

                
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(Color("Primary"))
                    .font(.title2)

            }
            .padding(.all)
            .frame(width: 350.0)
            .background(Color(hue: 0.386, saturation: 1.0, brightness: 0.307, opacity: 0.322))
            .cornerRadius(18)
            .sheet(isPresented: $showingWeightCapture, content: {WeightCapture()}) // modifier that shows weight capture sheet if its not already showing
            
//            HStack()
//                {
//                    Text("What is your weight today? ")
//                        .fontWeight(.semibold)
//                        .foregroundColor(Color("Primary"))
//                    NavigationLink("", destination: WeightCapture())
//                    Button(action: {
//                        print("Button Tapped")
//                        self.showingWeightCapture = true})
//                    {
//                        Image(systemName: "plus.circle.fill").foregroundColor(.green).font(.title2)
//                    }
//
//                }
//                .padding(.all)
//                .frame(width: 350.0)
//                .background(Color(hue: 0.386, saturation: 1.0, brightness: 0.307, opacity: 0.322))
//                .cornerRadius(18)
//                .sheet(isPresented: $showingWeightCapture, content: {WeightCapture()}) // modifier that shows weight capture sheet if its not already showing
                
                    
            Text("Goal Progress")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width:340, alignment: .leading)
                .padding(.top)
                .padding(.bottom, -1.0)
            
                VStack(alignment: .leading, spacing: 16.0){
                    
                    LottieView(name: "56866-your-food-order-have-been-scheduled", loopMode: .loop).frame(width:200)
                        .padding(.leading, -150)
                    Text("Here's a look at your progress towards reaching your weight goal!").fontWeight(.semibold)

                    ProgressView(value: 0.5)
                        .accentColor(Color("Primary"))
                    Text("As of June 9th, 2022")
                        .font(.footnote)
                }
                .padding()
                .frame(width: 350.0, height: 150)
                .background(Color(hue: 1.0, saturation: 0.015, brightness: 0.155, opacity: 0.595))
                .cornerRadius(18)
                
                
            }
    }
}

struct WeightView_Previews: PreviewProvider {
    static var previews: some View {
        WeightView()
            .preferredColorScheme(.dark)
    }
}

class weightStore: ObservableObject
{
    @Published var weightData = [82.9,81.6,80.4,79.9,80.4]
}
