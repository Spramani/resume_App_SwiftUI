//
//  first.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 25/06/21.
//

import SwiftUI

struct first: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("Shubham p ramani")
                            .bold()
                            .font(.title)
                            .padding(.bottom, 10)
                        Text("64 parmeshwer park  surat.")
                            
                            .fontWeight(.semibold)
                            .font(.title2)
                            .lineLimit(4)
                        
                        Text("7575031095")
                            
                            .fontWeight(.semibold)
                            .font(.title2)
                            .lineLimit(4)
                        
                        Text("https://www.apple.com")
                            
                            .fontWeight(.semibold)
                            .font(.title2)
                            .lineLimit(4)
                        
                    }
                    
                    
                    Spacer()
                    Image(systemName: "circle.fill")
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
                            VStack{
                                Text("CONTECT")
                                    .fontWeight(.light)
                                    .font(.title)
                                    .padding(.leading, 20)
                                Text("right")
                                    .fontWeight(.light)
                                    .font(.title)
                                    .padding(.leading, 20)
                                
                            }
                            
                            Spacer()
                        }
                        
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text("Experience")
                                .fontWeight(.bold)
                                .font(.title)
                                .padding(.leading, 20)
                            Spacer()
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
