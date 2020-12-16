//
//  Home.swift
//  MentalHealthApp
//
//  Created by George Davis IV on 11/8/20.
//

import SwiftUI

struct Home: View {
    
    //Demo Post Data
    var posts = [
        Post(image: "p1", title: "Love it or hate it?", time: "02:31pm", liked: false, reaction: ""),
        Post(image: "p2", title: "New strategies on how to stay on schedule", time: "16:11pm", liked: false, reaction: ""),
        Post(image: "p3", title: "Life stressing you out? Try these three tips", time: "10:04pm", liked: false, reaction: ""),
        Post(image: "p4", title: "This new app helps use to tackles their daily To-Do's!!", time: "08:41pm", liked: false, reaction: "")
    ]
    
    var body: some View {
        ZStack{
            
            Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).edgesIgnoringSafeArea(.all)
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack {
                    HStack{
                        Spacer()
                        
                        Text("Healthy Habits")
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                .padding(10)
                                .background(Color.black.opacity(0.4))
                                .clipShape(Circle())
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "bubble.left")
                                .font(.title2)
                                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                .padding(10)
                                .background(Color.black.opacity(0.4))
                                .clipShape(Circle())
                        })
                        
                        Spacer()
                    }
                    .padding(.vertical, 50)
                    .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    .edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 12){
                            ForEach(posts){post in
                                //Post View
                                PostView(post: post)
                                    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            }
                        }
                        
                    })
                }

                Spacer()
            }
            
            Spacer()
        }
    }
}


//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}

