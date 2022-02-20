//
//  PostItem.swift
//  FaceBookDemo
//
//  Created by Muhammad Islamov on 20/02/22.
//

import SwiftUI

struct PostItem: View {
    
    var img_url = "ic_post2"
    
    var body: some View {
        VStack{
            //Header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("ic_profile").resizable().frame(width: 50, height: 50)
                        .cornerRadius(25)
                    ZStack{
                            Circle().frame(width: 22, height: 22).foregroundColor(Color.white)
                            Circle().frame(width: 16, height: 16).foregroundColor(Color.green)
                    }
                }
                VStack(alignment: .leading, spacing: 5){
                    HStack(spacing: 0){
                        Text("Teshayev").fontWeight(.bold)
                        Image("ic_fer").resizable().frame(width: 40, height: 25)
                    }
                    HStack{
                        Text("1d")
                        Image("ic_public").resizable().frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "ellipsis").foregroundColor(Color.gray)
                })
            }.padding(.leading,10).padding(.top, 10).padding(.trailing,10)
            // image post
            Image(img_url).resizable().scaledToFit()
            // like comment counts for comment and share
            HStack(spacing: 5){
                HStack(spacing: -3){
                    Image("ic_fb_love").resizable().frame(width: 20, height: 20)
                    Image("ic_fb_like").resizable().frame(width: 20, height: 20)
                    Image("ic_fb_oo").resizable().frame(width: 20, height: 20)
                }
                Button(action: {}, label: {
                Text("7,7K").underline().foregroundColor(Color.gray)})
                Spacer()
                Button(action: {}, label: {
                Text("222 Comments").underline().foregroundColor(Color.gray)})
                Button(action: {}, label: {
                Text("77 Shares").underline().foregroundColor(Color.gray)})
            }.padding(.leading,10).padding(.top, 10).padding(.trailing,10)
            
            HStack{}.frame(height: 0.5).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5)).padding(.top, 5)
            
            HStack{
                Spacer()
                Button(action: {}, label: {
                    HStack{
                        Image("ic_fb_liked").foregroundColor(Color.gray)
                        Text("Like").foregroundColor(Color.gray)
                    }
                })
                Spacer()
                Button(action: {}, label: {
                HStack{
                    Image(systemName: "bubble.left").foregroundColor(Color.gray)
                    Text("Comment").foregroundColor(Color.gray)
                }
                })
                Spacer()
                Button(action: {}, label: {
                HStack{
                    Image(systemName: "arrowshape.turn.up.left").foregroundColor(Color.gray)
                    Text("Share").foregroundColor(Color.gray)
                }
                })
                Spacer()
            }.frame(height: 40).padding(.top,5)
            
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
