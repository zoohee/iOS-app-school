//
//  FriendView.swift
//  Lollin
//
//  Created by 조현호 on 2022/11/08.
//

import SwiftUI

extension Color {
    static let darkred = Color("darkred")
    static let lightred = Color("lightred")
    static let darkgray = Color("darkgray")
    static let lightgray = Color("lightgray")
    static let darkblue = Color("darkblue")
    static let lightblue = Color("lightblue")
    static let green = Color("green")
    static let asdf = Color("asdf")
    static let silver = Color("silver")
    static let gold = Color("gold")
    static let platinum = Color("platinum")
    static let background = Color("background")
}

struct FriendView: View {
    
    @ObservedObject var userStore : UserStore = UserStore(users: userData)
    
    var body: some View {
        
        ZStack {
            NavigationStack {
                List {
                    ForEach (userStore.users) {
                        user in
                        ListCell(user: user)
                            .listRowBackground(Image("\(user.mostChampion)")
                                .resizable()
                                .opacity(0.4)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.black]), startPoint: .leading, endPoint: .trailing))
                            )
                    }
                    .onDelete(perform: deleteItems)
                }
                //                .frame(height: 605)
                //                .offset(x: 0, y: UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0)
                .background(Color.background)
                .scrollContentBackground(.hidden)
                .listStyle(.plain)
                .navigationBarTitle(Text("친구 목록"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.background, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            }.padding()
            .background(Color.background)
        }
        
    }
    
    func deleteItems(at offsets: IndexSet) {
        userStore.users.remove(atOffsets: offsets)
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}

struct ListCell: View {
    
    var user: User
    
    var body: some View {
        NavigationLink(destination: ProfileView(selectedUser: user)) {
            HStack {
                ZStack {
                    Image(user.userImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .overlay {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color(user.userTier), lineWidth: 4)
                        }
                    
                    Circle()
                        .frame(width: 15)
                        .foregroundColor(user.isGamming ? Color(.green) : Color(.lightGray))
                        .shadow(color: .black, radius: 3)
                        .offset(x: 25, y: 25)
                } // ZStack
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                Text(user.userName)
                    .font(Font.custom("RIXGOEB", size: 28))
                    .bold()
                    .foregroundColor(Color.white)
            }
            .frame(height: 70)
            
        }
        
    }
}

