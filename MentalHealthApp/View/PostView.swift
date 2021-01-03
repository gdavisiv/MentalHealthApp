//
//  PostView.swift
//  MentalHealthApp
//
//  Created by George Davis IV on 11/17/20.
//

import SwiftUI
import SDWebImageSwiftUI

struct PostView: View {
    @State var post: Post
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
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
                        
                        Text(post.time)
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
                        HStack(spacing: 10){
                            
                            if post.reaction == ""{
                                
                                Image(systemName: "hand.thumbsup")
                                    .font(.system(size: 22, weight: .heavy))
                                    .foregroundColor(post.liked ? Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)) : Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                }
                                
                            Text(post.reaction == "" ? (post.liked ? "Liked" : "Like") : "")
                                    .fontWeight(.heavy)
                                    .foregroundColor(post.liked ? Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)) : Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                            AnimatedImage(name: post.reaction)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35, alignment: .center)
                            }
                            .onTapGesture(perform: {
                                post.liked.toggle()
                                })
                                //Drag Gesture
                                .gesture(DragGesture()
                                            .onChanged(onChanged(value:))
                                            .onEnded(onEnded(value:)))
                            
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
                .padding()
            }
                .zIndex(0)
            
            if post.show{
                
                ReactionView(post: $post)
                    .offset(y: -80)
                    .padding(.leading)
                    .zIndex(1)
            }
            
        })
    }
    
    func onChanged(value: DragGesture.Value){
        
        //Simple trick to figure out x coordinates in simulator when you press the screen
        //print(value.location.x)
        withAnimation(.easeIn){
            post.show = true
            
            withAnimation(Animation.linear(duration: 0.15)){
                //Creating Logic for post reaction likes
                let x = value.location.x
                
                if x > 20 && x < 80{post.reaction = reactions[0]}
                if x > 80 && x < 140{post.reaction = reactions[1]}
                if x > 140 && x < 180{post.reaction = reactions[2]}
                if x > 180 && x < 240{post.reaction = reactions[3]}
                if x > 240 && x < 300{post.reaction = reactions[4]}
                if x > 300 && x < 360{post.reaction = reactions[5]}
                
                //if less 20 or greater than 360 no reaction
                if x < 20 || x > 360{post.reaction = ""}
            }
            
        }
    }
    
    func onEnded(value: DragGesture.Value){
        withAnimation(Animation.linear.delay(0.3)){
            post.show = false
        }
    }
}

//struct PostView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostView()
//    }
//}
