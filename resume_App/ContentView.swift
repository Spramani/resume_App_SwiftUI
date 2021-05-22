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
    
    @State private var nextbutton: Bool = true
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
                    
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                    
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
                                nextbutton = true
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
                                nextbutton = true
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
                                nextbutton = true
                            }
                            VStack {
                                Image(systemName: "graduationcap.fill")
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
                                nextbutton = true
                            }
                            VStack {
                                Image(systemName: "hammer.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .FifthTab ? Color.white : Color.black)
                                Text("Skills")
                                    .foregroundColor(selectedTab == .FifthTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 77, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .FifthTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .FifthTab
                                nextbutton = true
                            }
                            VStack {
                                Image(systemName: "display")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .SixTab ? Color.white : Color.black)
                                Text("Softwere")
                                    .foregroundColor(selectedTab == .SixTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 77, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .SixTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .SixTab
                                nextbutton = true
                            }
                            VStack {
                                Image(systemName: "book.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .sevenTab ? Color.white : Color.black)
                                Text("Summary")
                                    .foregroundColor(selectedTab == .sevenTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 77, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .sevenTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .sevenTab
                                nextbutton = true
                                
                            }
                            VStack {
                                Image(systemName: "paperplane.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(selectedTab == .EightTab ? Color.white : Color.black)
                                Text("Done")
                                    .foregroundColor(selectedTab == .EightTab ? Color.white : Color.black)
                                Rectangle()
                                    .frame(width: 77, height: 5, alignment: .center)
                                    .foregroundColor(selectedTab == .EightTab ? Color.white : Color.black)
                                    .padding(.leading, 0)
                                    .padding(.trailing, 0)
                            }
                            .padding()
                            .onTapGesture {
                                self.selectedTab = .EightTab
                                nextbutton = false
                            }
                        }
                        .padding(.bottom, 30)
                        
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
                }else if selectedTab == .FifthTab  {
                    Skills()
                }else if selectedTab == .SixTab {
                    Softwere()
                }else if selectedTab == .sevenTab {
                    Summary()
                }else if selectedTab == .EightTab {
                    Done()
                }
            }
           if nextbutton{
            VStack{
               
                
                Button(action: {

                    if selectedTab == .FirstTab {
                        self.selectedTab = .SecondTab
                        nextbutton = true
                    } else if selectedTab == .SecondTab {
                        self.selectedTab = .ThirdTab
                        nextbutton = true
                    } else if selectedTab == .ThirdTab  {
                        self.selectedTab = .fourthTab
                        nextbutton = true
                    }else if selectedTab == .fourthTab  {
                        self.selectedTab = .FifthTab
                        nextbutton = true
                    }else if selectedTab == .FifthTab  {
                        self.selectedTab = .SixTab
                        nextbutton = true
                    }else if selectedTab == .SixTab {
                        self.selectedTab = .sevenTab
                        nextbutton = true
                    }else if selectedTab == .sevenTab {
                        self.selectedTab = .EightTab
                        nextbutton = true
                        nextbutton = false
                    }
                }, label: {
                    Text("Next") .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/13, alignment: .center)
                        .background(Color.black)
                        .cornerRadius(30)
                })
                
                
            }
            .padding(.bottom, 10)
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
    case SixTab
    case sevenTab
    case EightTab
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


