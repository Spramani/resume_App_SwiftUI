//
//  fourth.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 28/06/21.
//

import SwiftUI

struct fourth: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.blue)
                .frame(width: UIScreen.main.bounds.width - 20, height: 20, alignment: .center)
                .padding(.top, 20)
            
            HStack{Spacer()
                Text("Mr.shubh")
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .padding(.trailing, 10)
            }
            Text("7575031095 | shubhamramani@gmail.com | http://ssa")
                .lineLimit(nil)
                .padding(.leading, 0)
                .font(.system(size: 15))
                .padding(.top, 10)
            
            Rectangle()
                .fill(Color.gray)
                .frame(width: UIScreen.main.bounds.width - 20, height: 10, alignment: .center)
            
            
            Text("ios developer for over 1 years, photoshope exper ience and html")
            
            
            VStack{
                HStack{
                    Spacer()
                    Text("EXPERINCE")
                        .fontWeight(.semibold)
                        .font(.title2)
                }
                
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 5, alignment: .center)
                
                VStack(alignment: .leading){
                    HStack{
                        VStack(alignment: .leading){
                            VStack(alignment: .leading){
                                VStack(alignment: .trailing){
                                    Text("apple Inc")
                                        .fontWeight(.bold)
                                    Text("Softwere dev")
                                    
                                    Text("2/2019 - 2/2020")
                                        .padding(.trailing, 5)
                                        .padding(.top, 5)
                                }
                                
                            }
                            
                        }.padding(.bottom, 5)
                        .padding(.trailing, 0)
                        
                        VStack(alignment: .leading){
                            VStack(alignment: .leading){
                                VStack(alignment: .trailing){
                                    Text("apple Inc")
                                        .fontWeight(.bold)
                                    Text("Softwere dev")
                                    
                                    Text("2/2019 - 2/2020")
                                        .padding(.trailing, 5)
                                        .padding(.top, 5)
                                }
                                
                            }
                            
                        }.padding(.bottom, 5)
                        .padding(.trailing, 0)
                        
                        Spacer()
                    }
                    .padding(.leading, 10)
                }
                
            }.padding(.top, 10)
            
            VStack{
                HStack{
                    Spacer()
                    Text("EDUCATUION")
                        .fontWeight(.semibold)
                        .font(.title2)
                }
                
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 5, alignment: .center)
                
                VStack(alignment: .leading){
                    HStack{
                        VStack(alignment: .leading){
                            VStack(alignment: .leading){
                                VStack(alignment: .trailing){
                                    Text("2021 - present")
                                        .fontWeight(.bold)
                                    Text("J P DAWER")
                                    
                                    Text("computer Science")
                                        .padding(.trailing, 5)
                                        .padding(.top, 5)
                                }
                                
                                
                                
                            }
                            
                        }.padding(.bottom, 5)
                        .padding(.trailing, 0)
                        
                        VStack(alignment: .leading){
                            VStack(alignment: .leading){
                                VStack(alignment: .trailing){
                                    Text("2021 - present")
                                        .fontWeight(.bold)
                                    Text("J P DAWER")
                                    
                                    Text("computer Science")
                                        .padding(.trailing, 5)
                                        .padding(.top, 5)
                                }
                                
                            }
                            
                        }.padding(.bottom, 5)
                        .padding(.trailing, 0)
                        
                        Spacer()
                    }
                    .padding(.leading, 10)
                }
                
            }.padding(.top, 10)
            
            VStack{
                HStack{
                    Spacer()
                    Text("Softwere")
                        .fontWeight(.semibold)
                        .font(.title2)
                }
                
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 5, alignment: .center)
                
                VStack(alignment: .leading){
                    HStack{
                        HStack{
                            Text("Microsoft word")
                                .fontWeight(.bold)
                            Text("Good")
                                
                        }.frame(width: 150)

                        HStack{
                            Text("Excel")
                                .fontWeight(.bold)
                            Text("Good")
                                
                        }.frame(width: 150)
                        Spacer()
                    }
                   
                }
                
            }.padding(.top, 10)
            
            VStack{
                HStack{
                    Spacer()
                    Text("Skills")
                        .fontWeight(.semibold)
                        .font(.title2)
                }
                
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 5, alignment: .center)
                
                VStack(alignment: .leading){
                    HStack{
                        HStack{
                            Text("Public Speak,")
                                .fontWeight(.bold)
                                
                        }

                        HStack{
                            Text("Photography")
                                .fontWeight(.bold)
                    
                        }
                        Spacer()
                    }
                   
                }.padding(.leading, 10)
                
            }.padding(.top, 10)

            Spacer()
        }.padding()
    }
}

struct fourth_Previews: PreviewProvider {
    static var previews: some View {
        fourth()
    }
}
