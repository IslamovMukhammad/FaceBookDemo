//
//  StoryItem.swift
//  FaceBookDemo
//
//  Created by Muhammad Islamov on 20/02/22.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        Button(action: {}, label: {
        ZStack{
            Image("ic_story2").resizable().frame(width: 150, height: 250).scaledToFit()
            VStack(alignment: .leading){
                Image("ic_profile").resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue, lineWidth: 3))
                Spacer()
                Text("Abbos").fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
                Text("Teshayev").fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
            }.padding(.leading, -50).padding(.top, 10)
        }
        .frame(width: 150, height: 250).cornerRadius(15)
        })
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}




