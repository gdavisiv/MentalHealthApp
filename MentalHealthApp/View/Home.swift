//
//  Home.swift
//  MentalHealthApp
//
//  Created by George Davis IV on 11/8/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(.all)
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    
                    Text("Healthy Habits")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                }
            }
        }
    }
}
