//
//  second.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 26/06/21.
//

import SwiftUI

struct second: View {
    @State var rating = -1
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
       
    ]
    var body: some View {
        VStack{
            VStack{
                Capsule()
                    .fill(Color.white)
                    .frame(width: 200, height: 5, alignment: .center)
                    .padding()
                Text("Shubham P Ramani")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                Text("757503105 | shubh.adsum@gmail.com")
                Text("http://www.shubh.com")
                    .padding(.bottom, 10)
            }
            .frame(width: UIScreen.main.bounds.width - 10 ,height: 130, alignment: .center)
            .background(Color.blue)
            
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 95, height: 3, alignment: .center)
                    .background(Color.blue)
                Text("Summary")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.bottom, 1)
                    .padding(.top, 0)
                    .foregroundColor(Color.blue)
                Text("Softwere enginer for all user and data base collections and archive ")
                    .font(.title3)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                
            }
            .padding(.top, 15)
            .padding(.leading, 15)
            .frame(width: UIScreen.main.bounds.width - 10, alignment: .leading)
            
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 110, height: 3, alignment: .center)
                
                Text("Experience")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.bottom, 5)
                    .foregroundColor(Color.blue)
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Apple Devloper")
                                    .fontWeight(.bold)
                                Text("Softwere Enginers")
                                
                            }
                            Spacer()
                            Text("03/2021 - present")
                                .padding(.trailing, 5)
                                .padding(.top, 5)}
                    }.padding(.bottom, 5)
                    .padding(.trailing, 5)
                    VStack(alignment: .leading){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Apple Devloper")
                                    .fontWeight(.bold)
                                Text("Softwere Enginers")
                                
                            }
                            Spacer()
                            Text("03/2021 - present")
                                .padding(.trailing, 5)
                                .padding(.top, 5)}
                    }.padding(.bottom, 5)
                    .padding(.trailing, 5)
                    
                }
                
            }.padding(.top, 15)
            .padding(.leading, 15)
            .frame(width: UIScreen.main.bounds.width - 10, alignment: .leading)
            
            
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 3, alignment: .center)
                Text("Education")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.bottom, 5)
                    .foregroundColor(Color.blue)
                HStack{
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            VStack(alignment: .leading){
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
                            VStack(alignment: .leading){
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
                }
                
            }.padding(.top, 15)
            .padding(.leading, 15)
            .frame(width: UIScreen.main.bounds.width - 10, alignment: .leading)
            
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 95, height: 3, alignment: .center)
                Text("Softwere")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.bottom, 5)
                    .foregroundColor(Color.blue)
        
                HStack{
                    VStack(alignment: .leading){
                        Text("microsoft")
                        ratingView(rating: .constant(2))
                    }.padding(.top, 0)
                    Spacer()
                    VStack(alignment: .leading){
                        Text("microsoft")
                        ratingView(rating: $rating)
                        
                    }.padding(.top, 5)
                    Spacer()
                }
                
            }.padding(.top, 15)
            .padding(.leading, 15)
            .frame(width: UIScreen.main.bounds.width - 10, alignment: .leading)
            
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 55, height: 3, alignment: .center)
                Text("Skills")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.bottom, 5)
                    .foregroundColor(Color.blue)
        
                HStack{
                    VStack(alignment: .leading){
                        Text("microsoft")
                        ratingView(rating: .constant(2))
                    }.padding(.top, 0)
                    Spacer()
                    VStack(alignment: .leading){
                        Text("microsoft")
                        ratingView(rating: $rating)
                        
                    }.padding(.top, 5)
                    Spacer()
                }
                
            }.padding(.top, 15)
            .padding(.leading, 15)
            .frame(width: UIScreen.main.bounds.width - 10, alignment: .leading)
            
            Spacer()
        }
        
    }
}

struct second_Previews: PreviewProvider {
    static var previews: some View {
        second()
    }
}
