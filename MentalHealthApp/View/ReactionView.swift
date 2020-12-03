//
//  ReactionView.swift
//  MentalHealthApp
//
//  Created by George Davis IV on 11/29/20.
//8:08

import SwiftUI
//Import below library is important to work with .gifs/web images
import SDWebImageSwiftUI

struct ReactionView: View {
    var body: some View {
        
        HStack(spacing: 15){
            ForEach(reactions,id: \.self){gif in
                
                AnimatedImage(name: gif)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
            }
        }
        .padding(.vertical,10)
        .padding(.horizontal,20)
        .background(Color.white)
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.15), radius: 5, x: -5, y: 5)
    }
}

var reactions = ["like.gif","love.gif","haha.gif","wow.gif","sad.gif","angry.gif"]

struct ReactionView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionView()
    }
}
