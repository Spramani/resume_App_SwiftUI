//
//  home.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 04/05/21.
//

import SwiftUI

struct home: View {
    @State private var firstname = ""
    @State private var middlename = ""
    @State private var lastname = ""
    var body: some View {
        ZStack{
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(alignment: .leading){
                    Text("Let`s get startes with your name")
                        .font(.system(size: 25))
                        .padding(.bottom, 20)
                    Text("Whats is your name?")
                        .padding(.bottom, 30)
                    TextField("First Name", text: $firstname)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                        .padding(.leading, 0)
                        .padding(.trailing, 0)
                        .padding(.bottom, 30)
                    
                    TextField("Middle Name", text: $middlename)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                        .padding(.leading, 0)
                        .padding(.bottom, 30)
                        .padding(.trailing, 0)
                    
                    TextField("Last Name", text: $lastname)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                        .padding(.leading, 0)
                        .padding(.trailing, 0)
                    
                    
                    Text("usually first and last name is required, but feel free to include your middle name as part of the first name ")
                        .padding(.top, 60)
                    Spacer()
                    
                    
                }}
                .padding()
            Spacer()
            VStack{
                Spacer()
                Button(action: {}, label: {
                    Text("Next")
                })
                .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/13, alignment: .center)
                .background(Color.black)
                .cornerRadius(30)
                
                
                
            }
            .padding()
            
        }
        
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
