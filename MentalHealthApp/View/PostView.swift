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
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                Spacer(minLength: 0)
            }
            .padding(.horizontal)
            
            Image(post.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 250 )
            
            //This creates the Bar where a user can like, comment or share a post
            ZStack {
                HStack{
                    Spacer()
                    
                    Button(action: {post.liked.toggle()}, label: {
                        Label(
                            title: {
                                Text(post.liked ? "Liked" : "Like")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                            },
                            icon: { Image(systemName: "hand.thumbsup")
                                .font(.system(size: 22, weight: .heavy))
                                .foregroundColor(post.liked ? Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)) : Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                            })
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Label(
                            title: {
                                Text("Comment")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                            },
                            icon: { Image(systemName: "message")
                                .font(.system(size: 22, weight: .heavy))
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                            })
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Label(
                            title: {
                                Text("Share")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                            },
                            icon: { Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 22, weight: .heavy))
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                            })
                    })
                    
                    Spacer()
                }
            }
        }
    }
}

//struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView()
//    }
//}
