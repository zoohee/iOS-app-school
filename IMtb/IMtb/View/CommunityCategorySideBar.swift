//
//  CommunityCategorySideBar.swift
//  IMtb
//
//  Created by greenthings on 2022/12/01.
//

import SwiftUI

struct CommunityCategorySideBar: View {
    
    @ObservedObject var mbtis: Mbtis
    
    @State var showMenu = false
    
    
    var body: some View {
        
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }
            }
        
        NavigationStack{
            GeometryReader{ geometry in
                
                ZStack(alignment: .leading){
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    
                    
                    if self.showMenu {
                        MenuView(mbtis: mbtis)
                            .frame(width: geometry.size.width/2)
                            .frame(height: geometry.size.height)
                            .transition(.move(edge: .leading))
                        
                    }
                    
                }
                .gesture(drag)
            }
            .navigationBarTitle("MBTI 선택", displayMode:.inline)
            .navigationBarItems(leading: (
                                Button(action: {
                                    withAnimation {
                                        self.showMenu.toggle()
                                    }
                                }) {
                                    Image(systemName: "line.horizontal.3")
                                        .imageScale(.large)
                                }
                            ))
        }

        
        
    }
    
    
    
}


struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        CommunityListView()
            .offset(y:30)
    }
}



struct MenuView: View {
    
    @ObservedObject var mbtis: Mbtis
    
    var body: some View {
        VStack(alignment: .leading){
            

                //.padding(.top, 30)
            
            List{
                ForEach(mbtis.menuMbtiArr, id: \.self){ mbti in
                    Button {
                        print("d")
                    } label: {
                        Text("\(mbti)")
                    }
                    .padding(.top, 20)
                }
                .listRowBackground(Color("mint"))
            }
            .fontWeight(.light)
            .foregroundColor(.white)
            .scrollContentBackground(.hidden)
            .listStyle(.plain)

            
//            HStack{
//                Image(systemName: "person")
//                    .foregroundColor(.gray)
//                    .imageScale(.large)
//
//                Text("Profile")
//                    .foregroundColor(.gray)
//                    .font(.headline)
//            }
//            .padding(.top, 100)
//            HStack{
//                Image(systemName: "envelope")
//                    .foregroundColor(.gray)
//                    .imageScale(.large)
//                Text("Message")
//                    .foregroundColor(.gray)
//                    .font(.headline)
//            }
//            .padding(.top, 30)
//            HStack{
//                Image(systemName: "gear")
//                    .foregroundColor(.gray)
//                    .imageScale(.large)
//                Text("Setting")
//                    .foregroundColor(.gray)
//                    .font(.headline)
//            }
//            .padding(.top, 30)
            
            Spacer()
            
        }
        .padding()
        .background(Color("mint"))
        .frame(maxWidth: .infinity, maxHeight: 600 ,alignment: .leading)
 
        .edgesIgnoringSafeArea(.all)
        //.ignoresSafeArea(edges: .top)
        
    }
}




struct CommunityCategorySideBar_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCategorySideBar(mbtis: Mbtis())
    }
}
