//
//  HomeScreen.swift
//  FaceBookDemo
//
//  Created by Muhammad Islamov on 19/02/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            ScrollView{
                // life photo room
                VStack{
                    HStack{
                        Image("ic_profile").resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        Text("What's on your mind?").font(.system(size: 17))
                    }.frame(maxWidth: .infinity, alignment: .topLeading)
                     .frame(height: 90)
                     .padding(.leading, 10).padding(.trailing, 10)
                    HStack{}.frame(height: 1).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        Spacer()
                        HStack{
                            Button(action: {}, label: {
                                HStack{
                                    Image("ic_live").resizable().foregroundColor(Color.red)
                                .frame(width: 25, height:25)
                            Text("Live").foregroundColor(Color.black)
                                }})
                        }
                        Spacer()
                        HStack{
                            Button(action: {}, label: {
                                HStack{
                            Image(systemName: "photo").foregroundColor(Color.red)
                            Text("Photo").foregroundColor(Color.black)
                                }})
                        }
                        Spacer()
                        HStack(spacing: 0){
                            Button(action: {}, label: {
                                HStack{
                            Image("ic_location").resizable()
                                .frame(width: 25, height:25)
                                    Text("Check").foregroundColor(Color.black)
                                }})
                        }
                        Spacer()
                    }.frame(height: 50)
                }
                // create room
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            HStack(spacing: 20){
                                    RoomItem(isOnline: false)
                                    RoomItem(isOnline: false)
                                    RoomItem(isOnline: true)
                                    RoomItem(isOnline: true)
                                    RoomItem(isOnline: true)
                                    RoomItem(isOnline: true)
                                    RoomItem(isOnline: true)
                                    RoomItem(isOnline: true)
                                }
                        }
                        }.frame(height: 100).frame(maxWidth: .infinity).padding(.leading, 10)
                    }
                //  STORY
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }.padding(.leading, 10)
                     .padding(.top, 10)
                     .padding(.bottom, 10)
                }
                // Post
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    VStack{
                        PostItem(img_url: "image1")
                        PostItem(img_url: "image2")
                        PostItem(img_url: "image3")
                        PostItem(img_url: "image4")
                        PostItem(img_url: "image5")
                    }
                }
            
            
            
            }
            
            .navigationBarItems(
                leading: Text("facebook").fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(Color.blue),
                trailing: HStack{
                    Button(action: {}, label: {
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image(systemName: "magnifyingglass").foregroundColor(Color.black)
                    }})
                    Button(action: {}, label: {
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_sender").resizable()
                            .frame(width: 28, height:28)
                    }})
                })
            .navigationBarTitle("", displayMode: .inline)
        }
    }
    }


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
