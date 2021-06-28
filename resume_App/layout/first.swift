//
//  first.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 25/06/21.
//

import SwiftUI

struct first: View {
    @State var rating = -1
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){ZStack{
            HStack{
                VStack{
                    
                    Capsule()
                        .fill(Color.blue)
                        .frame(width: 30,height: UIScreen.main.bounds.height - 100)
                        .padding(.leading, 0)
                    
                }
                
                VStack{
                    HStack{
                        
                        VStack(alignment: .leading){
                            Text("Shubham p ramani")
                                .bold()
                                .font(.custom("Georgia", size: 30.0))
                                
                                .padding(.bottom, 10)
                            
                        }
                        
                        Spacer()
                        Image("image")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            
                        
                    }.padding()
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .padding(.bottom, 20)
                    
                    HStack{
                        VStack(alignment: .leading){
                            HStack{
                                VStack(alignment: .leading){
                                    HStack{
                                        Image(systemName: "phone.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: .center)
                                        Text("+91 7575031095")
                                            .fontWeight(.light)
                                            
                                            .padding(.leading, 0
                                            )
                                    }
                                    HStack{
                                        Image(systemName: "envelope.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: .center)
                                        Text("shubham.adsum@gmail.com")
                                            .fontWeight(.light)
                                            
                                            .padding(.leading, 0
                                            )
                                    }
                                    HStack{
                                        Image(systemName: "link.circle.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: .center)
                                        Text("http://www.shubham.com")
                                            .fontWeight(.light)
                                            
                                            .padding(.leading, 0
                                            )
                                    }
                                    
                                }
                                
                            }
                            
                            VStack(alignment: .leading){
                                Text("Skills")
                                    .font(.custom("Georgia", size: 18.0))
                                    .fontWeight(.semibold)
                                Capsule()
                                    .frame(width: 160,height: 1)
                                
                            }.padding(.top, 15)
                            HStack{
                                Text("microsoft")
                                Spacer()
                                Text("Good  ")
                                
                            }.padding(.top, 0)
                            HStack{
                                Text("microsoft")
                                Spacer()
                                Text("Good  ")
                                
                            }.padding(.top, 0)
                            HStack{
                                Text("microsoft")
                                Spacer()
                                Text("Good  ")
                                
                            }.padding(.top, 0)
                            
                            VStack(alignment: .leading){
                                Text("Softwere")
                                    .font(.custom("Georgia", size: 18.0))
                                    .fontWeight(.semibold)
                                Capsule()
                                    .frame(width: 160,height: 1)
                                
                            }.padding(.top, 15)
                            VStack{
                                VStack(alignment: .leading){
                                    Text("microsoft")
                                    ratingView(rating: $rating)
                                    
                                }.padding(.top, 0)
                                VStack(alignment: .leading){
                                    Text("microsoft")
                                    ratingView(rating: $rating)
                                    
                                }.padding(.top, 5)
                                Spacer()
                            }
                            Spacer()
                        }.padding(.trailing, 0)
                        
                        HStack{
                            Capsule()
                                .fill(Color.blue )
                                .frame(width: 1,height: 550)
                        }
                        VStack(alignment: .leading){
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Summary")
                                    .frame(width: 110, height: 7, alignment: .center)
                                  
                                    .font(.system(size: 15))
                                            .padding()
                                    .background(Color.gray)
                                    .cornerRadius(50)
                                    Text("many/much and few/little (Q(uantity)-words; Rett 2016) sharefeatures with adjectives, adverbs, nouns, numerals")
                                }
                             
                                Spacer()
                            }
                            
                            VStack(alignment: .leading){
                                Text("Experience")
                                .frame(width: 110, height: 7, alignment: .center)
                              
                                .font(.system(size: 15))
                                        .padding()
                                .background(Color.gray)
                                .cornerRadius(50)
                                    .padding(.top, 15)
                                HStack{
                                    Text("03/2021")
                                        .padding(.trailing, 5)
                                    Text("Apple Devloper")
                                }.padding(.bottom, 5)
                                .padding(.trailing, 5)
                                HStack{
                                    Text("03/2021")
                                        .padding(.trailing, 5)
                                    Text("Apple Devloper")
                                }
                            }
                            VStack(alignment: .leading){
                                Text("Education")
                                .frame(width: 110, height: 7, alignment: .center)
                              
                                .font(.system(size: 15))
                                        .padding()
                                .background(Color.gray)
                                .cornerRadius(50)
                                    .padding(.top, 15)
                                HStack{
                                    Text("03/2021")
                                        .padding(.trailing, 5)
                                    Text("Apple Devloper")
                                }.padding(.bottom, 5)
                                .padding(.trailing, 5)
                                HStack{
                                    Text("03/2021")
                                        .padding(.trailing, 5)
                                    Text("Apple Devloper")
                                }
                            }
                            Spacer()
                        }.padding(.leading, 0)
                        
                    }
                   
                }
                
            }
            
            
            Spacer()
        }
        
        }
        
    }
}


struct first_Previews: PreviewProvider {
    static var previews: some View {
        first()
    }
}
