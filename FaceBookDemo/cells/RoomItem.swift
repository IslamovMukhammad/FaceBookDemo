//
//  RoomItem.swift
//  FaceBookDemo
//
//  Created by Muhammad Islamov on 20/02/22.
//

import SwiftUI

struct RoomItem: View {
    var isOnline = false
    
    var body: some View {
        Button(action: {}, label: {
        ZStack(alignment: .bottomTrailing){
            Image("ic_profile").resizable().frame(width:60, height: 60)
                .cornerRadius(30)
            if isOnline{
            ZStack{
                Circle().frame(width: 24, height: 24).foregroundColor(Color.white)
                Circle().frame(width: 18, height: 18).foregroundColor(Color.green)
            }
        }
        }
        })
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
