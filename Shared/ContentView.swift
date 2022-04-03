//
//  ContentView.swift
//  Shared
//
//  Created by Noslin on 24/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            HStack {
                //Plan Basic
                PricingView (title: "Basic", price:"9$", textColor: .white, bgColor:.purple )
                
                //Plan pro
                ZStack {
                    PricingView(title: "Pro", price: "19$", textColor: .black, bgColor: .gray)
                    Text("Best for Designer")
                        .font(.system(.caption,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255, opacity: 1))
                        .offset(x: 0, y: 87)
                }
                
            }
                .padding()
            //Team
          
            ZStack {
                PricingView (title: "Team", price:"299$", textColor: .white, bgColor:.black,icon: "wand.and.rays")
                    
                Text("Best for Designer")
                    .font(.system(.caption,design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255, opacity: 1))
                    .offset(x: 0, y: 100)
            } .padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack{
                Text("Choose")
                    .font(.system (.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                Text("Your plan")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.bold)
            }
            Spacer()
                
        }
        .padding()
    
    }
}

struct PricingView: View {
    
    var title : String
    var price: String
    var textColor: Color
    var bgColor: Color //gb -> background
    var icon: String?
    
    var body: some View {
        VStack{
            if let icon = icon {
                Image(systemName: icon )
            }
           
            Text(title)
               .font(.system(.title))
            Text (price)
                .font(.system(size: 40, weight: .heavy,design: .rounded))
            Text ("per month")
                .font(.system(.headline))
           
        }
        .foregroundColor(textColor)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}

