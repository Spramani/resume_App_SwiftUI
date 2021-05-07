//
//  ContentView.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 04/05/21.
//

import SwiftUI

struct ContentView: View {
    @State private var defaultView :Int = 0
    @State var selectedTab = Tabs.FirstTab
    var about = false
    var body: some View {
        
        VStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.white,Color.purple]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    
                    HStack{
                        Button(action: {
                            
                        } , label: {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color.black)
                        })
                        .padding()
                        Text("Resume")
                            .font(.system(size: 30))
                            .padding()
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            
                            VStack {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .FirstTab ? Color.white : Color.black)
                                Text("About")
                                    .foregroundColor(selectedTab == .FirstTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 60, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .FirstTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .FirstTab
                            }
                            
                            VStack {
                                Image(systemName: "envelope.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .SecondTab ? Color.white : Color.black)
                                Text("Contact")
                                    .foregroundColor(selectedTab == .SecondTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 70, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .SecondTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .SecondTab
                            }
                            
                            VStack {
                                Image(systemName: "bag.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .ThirdTab ? Color.white : Color.black)
                                Text("Work")
                                    .foregroundColor(selectedTab == .ThirdTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 60, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .ThirdTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .ThirdTab
                            }
                            VStack {
                                Image(systemName: "bag.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .fourthTab ? Color.white : Color.black)
                                Text("Education")
                                    .foregroundColor(selectedTab == .fourthTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 77, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .fourthTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .fourthTab
                            }
                        }
                        .padding(.bottom, 10)
                        
                    }
                    
                }
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5, alignment: .center)
            //            .background(Color.gray.edgesIgnoringSafeArea(.all))
            
            .padding(.bottom, 0)
            
            Spacer()
            VStack{
                Spacer()
                if selectedTab == .FirstTab {
                    home()
                } else if selectedTab == .SecondTab {
                    address()
                } else if selectedTab == .ThirdTab  {
                    Work()
                }else if selectedTab == .fourthTab  {
                    Education()
                }
            }
        }
       
    }
}

enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
    case fourthTab
    case FifthTab
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15.0)
    }
}


