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
            HStack{
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4, content: {
                    
                    Text("George D.IV")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                    Text(post.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                })
            }
        }
    }
}

//struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView()
//    }
//}
