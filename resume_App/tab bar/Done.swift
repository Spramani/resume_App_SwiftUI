//
//  Done.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 18/05/21.
//

import SwiftUI

struct Done: View {
    
    
    @State private var infomation: [About] = [About]()
    @State private var experiences: [Job] = [Job]()
    
    
    var count = 0
    private func informationsjob() {
        experiences = coredm.getAlljob()
    }
    private func experiencess() {
        infomation = coredm.getallAbout()
    }
   
    
    var firstnames = UserDefaults.standard.string(forKey: "firstname")
    var lastnames = UserDefaults.standard.string(forKey: "lastname")
    var middlenames = UserDefaults.standard.string(forKey: "middlename")
   
    @State public var imges = UserDefaults.standard.data(forKey: "imagesss")
 
    
    var emails = UserDefaults.standard.string(forKey: "emails")
    var contectnos = UserDefaults.standard.string(forKey: "contectnos")
    var websites = UserDefaults.standard.string(forKey: "websites")
    var addresss = UserDefaults.standard.string(forKey: "addresss")
    
    var page = home( )
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    VStack{
                        
                        if imges == nil{
                            Image(systemName: "person.fill")
                                .resizable()
                                
                                
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    .frame(width: 100, height: 100, alignment: .center)
                        }else{
                            Image(uiImage: (UIImage(data: imges!)!))
                                .resizable()
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    .frame(width: 100, height: 100, alignment: .center)
                        }
                   
                            
                         
                        
                        Text(firstnames! + lastnames!)
                            .frame(width: UIScreen.main.bounds.width, alignment: .center)
                            .padding(.bottom, 1)
                        
                        HStack{
                            Text("7575031095 | shubhamramani@gmail.com | http://ssa")
                                .padding(.leading, 0)
                                .font(.system(size: 15))
                            
                        }
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            .padding(.bottom, 30)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("EXPERIENCE")
                                    .font(.system(size: 19))
                                    .bold()
                                
                            }.padding(.leading, 20)
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                                .padding(.trailing, 10)
                                .padding(.bottom, 0)
                            
                            VStack{
                                List{
                                    ForEach(experiences, id: \.self) { exper in
                                        
                                        HStack{
                                            
                                            Text("\(exper.months!) / \(exper.years!)")
                                                
                                            Spacer()
                                            VStack(alignment: .trailing){
                                                Text("Apple incdd")
                                                Text("iOS developer")
                                            }
                                            
                                        .padding(.top, 10)
                                        .padding(.leading, 20)
                                        .padding(.trailing, 20)
                                        
                                    }
                                        .frame(height: 48 )
                                        
                                    
                                }
                                
                                
                            }
                                .onAppear(perform: {
                                    informationsjob()
                                    UITableView.appearance().separatorStyle = .none
                                  
                                })
                            }.frame(width: UIScreen.main.bounds.width, height:( 48 * CGFloat(experiences.count)) + 50, alignment: .center)}
//                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("EDUCATION")
                                    .font(.system(size: 19))
                                    .bold()
                                
                            }.padding(.leading, 20)
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                                .padding(.trailing, 10)
                                .padding(.bottom, 0)
                            VStack{
                                HStack{
                                    Text("2/2000 - 2/2505")
                                    Spacer()
                                    VStack(alignment: .trailing){
                                        Text("Apple inc")
                                        Text("iOS developer")
                                    }
                                }.padding(.top, 10)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                HStack{
                                    Text("2/2000 - present")
                                    Spacer()
                                    VStack(alignment: .trailing){
                                        Text("Apple inc")
                                        Text("iOS developer")
                                    }
                                }.padding(.top, 10)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 15)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("SOFTWERE")
                                    .font(.system(size: 19))
                                    .bold()
                                
                            }.padding(.leading, 20)
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                                .padding(.trailing, 10)
                                .padding(.bottom, 0)
                            VStack{
                                HStack{
                                    Text("microsoft")
                                    Spacer()
                                    Text("Good  ")
                                    
                                }.padding(.top, 10)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 20)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("SKILLS")
                                    .font(.system(size: 19))
                                    .bold()
                                
                            }.padding(.leading, 20)
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                                .padding(.trailing, 10)
                                .padding(.bottom, 0)
                            VStack{
                                HStack{
                                    Text("microsoft")
                                    Spacer()
                                    Text("Good  ")
                                    
                                }.padding(.top, 10)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        
                        
                    }
                    
                    .background(Color.white)
                    
                }}
                
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
        
    }
}

struct Done_Previews: PreviewProvider {
    static var previews: some View {
        Done()
    }
}
