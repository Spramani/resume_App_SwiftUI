//
//  SideMenuView.swift
//  sidemenu_SwiftUI
//
//  Created by Adsum MAC 2 on 19/04/21.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    @State var selection: Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue,Color.purple]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
               
                VStack(){
                    SideMenuHeader(isShowing: $isShowing)
                        .foregroundColor(.black)
                        .frame(height: 180)
                    ScrollView{
                    VStack{
                        NavigationLink(destination: ContentView(selectedTab: .FifthTab, about: true), isActive: $selection) {

                        Button(action: { withAnimation(.spring()) {
                           
                          //  isShowing.toggle()
                            self.selection = true
                            print("hello button 1")
                        }}, label: {
                            HStack{
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(.trailing, 20)
                                Text("About")
                                    .font(.system(size: 20))
                            Spacer()
                            }.padding()
                        
                        })
                        }.navigationBarItems(leading: Button(action: {
                                        withAnimation(.spring()) {
                                            isShowing.toggle()
                                        }
                                    }, label: {
                                        Image(systemName: "list.bullet")
                                            .foregroundColor(.black)
                            
                                    }))
                        
                        Button(action: {print("Contect")}, label: {
                            HStack{
                                Image(systemName: "envelope.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(.trailing, 20)
                                Text("Contact")
                                    .font(.system(size: 20))
                            Spacer()
                            }.padding()
                            
                        })
                        HStack{
                            Image(systemName: "bag.fill")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.trailing, 20)
                            Text("Work")
                                .font(.system(size: 20))
                        Spacer()
                        }.padding()
                        HStack{
                            Image(systemName: "graduationcap.fill")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.trailing, 20)
                            Text("Education")
                                .font(.system(size: 20))
                        Spacer()
                        }.padding()
                        HStack{
                            Image(systemName: "hammer.fill")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.trailing, 20)
                            Text("Skills")
                                .font(.system(size: 20))
                        Spacer()
                        }.padding()
                        HStack{
                            Image(systemName: "display")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.trailing, 20)
                            Text("Skills")
                                .font(.system(size: 20))
                        Spacer()
                        }.padding()
                        HStack{
                            Image(systemName: "book.fill")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.trailing, 20)
                            Text("Summary")
                                .font(.system(size: 20))
                        Spacer()
                        }.padding()
                        HStack{
                            Image(systemName: "paperplane.fill")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.trailing, 20)
                            Text("Done")
                                .font(.system(size: 20))
                        Spacer()
                        }.padding()
                        
                    }

                    Spacer()
                } .foregroundColor(.black)}
            }.navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
       
        }
    }
}


struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
