//
//  PostView.swift
//  MentalHealthApp
//
//  Created by George Davis IV on 11/17/20.
//

import SwiftUI

struct PostView: View {
    @State var post: Post
    
    var body: some View {
        VStack{
            HStack(spacing: 15){
                
                Image("profile")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4, content: {
                    
                    Text("George D.IV")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                    Text(post.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                })
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "rectangle.grid.2x2")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 24, height: 24)
                })
            }
            .padding()
            
            HStack{
                Text(post.title)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                Spacer(minLength: 0)
            }
        }
    }
}

//struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView()
//    }
//}
