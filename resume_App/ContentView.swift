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
    @State private var isShowing = false
    @State private var nextbutton: Bool = true
    @State private var showingActivity = false
    
    
   
    
    
    var about = false
    var body: some View {
        NavigationView{
            ZStack {
                
                ZStack{
                    
                    // two background Cards...
                    
                    Color.white
                        .opacity(0.5)
                        .cornerRadius(isShowing ? 15 : 0)
                        // Shadow...
                        .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                        .offset(x: isShowing ? -120 : 0)
                        .padding(.vertical,45)
                    
                    Color.white
                        .opacity(0.4)
                        .cornerRadius(isShowing ? 15 : 0)
                        // Shadow...
                        .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                        .offset(x: isShowing ? -150 : 0)
                        .padding(.vertical,70)
                    
                }
                // Scaling And Moving The View...
                .scaleEffect(isShowing ? 0.84 : 1)
                .offset(x: isShowing ? getRect().width - 120 : 0)
                .ignoresSafeArea()
                
                VStack{
                    VStack{
                        
                        HStack{
                            Button(action: {
                                withAnimation(.spring()) {
                                    isShowing.toggle()
                                }
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
                        .frame(height: 15)
                        //                    .edgesIgnoringSafeArea(.all)
                        .padding(.leading, 5)
                        
                        VStack{
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
                                    
                                    
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
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
                                    .padding(.top, 40)
                                    .padding(.leading, 20)
                                    .onTapGesture {
                                        self.selectedTab = .EightTab
                                        nextbutton = false
                                    }
                                }
                                .padding(.bottom, 30)
                                
                            }
                            .frame(height: 100)
                            
                        }
                        
                        
                    }.frame(height: 150)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
                    )
                    
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
                    Spacer()
                    if nextbutton{
                        VStack{
                            
                            Button(action: {
                                self.showingActivity.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now()+5){
                                    showingActivity = false
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
                                }
                            }, label: {
                                if showingActivity{
                                    HStack(spacing: 15) {
                                        MovingCircleView(state: .right, moveOffset: 15, animationDuration: 1)
                                        MovingCircleView(state: .left, moveOffset: 15, animationDuration: 1.1)
                                        MovingCircleView(state: .right, moveOffset: 15, animationDuration: 1.05)
                                        MovingCircleView(state: .left, moveOffset: 15, animationDuration: 1.15)
                                        MovingCircleView(state: .right, moveOffset: 15, animationDuration: 1.1)
                                        MovingCircleView(state: .left, moveOffset: 15, animationDuration: 1.05)
                                        MovingCircleView(state: .right, moveOffset: 15, animationDuration: 1)
                                    }

                                    
                                }else{
                                    Text("Next")
                                        .frame(width: 280, height: 50, alignment: .center)
                                        .background(Color.black)
                                        .cornerRadius(40)
                                }
                                
                            })
                            
                            
                        }
                        
                    }
                }
                
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
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

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            
            .cornerRadius(15.0)
    }
}



// Extending View To get Screen Size...
extension View{
    
    func getRect()->CGRect{
        
        return UIScreen.main.bounds
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        MovingCircleView(moveOffset: 20, animationDuration: 1)
    }
}
