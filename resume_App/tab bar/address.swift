//
//  address.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 04/05/21.
//

import SwiftUI

struct address: View {
    @State private var email = ""
    @State private var contectno = ""
    @State private var website = ""
    @State private var address = ""
    var body: some View {
        
        NavigationView{
            
        ZStack{
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(alignment: .leading){
                    Text("Phone, Email and website?")
                        .font(.system(size: 25))
                        .padding(.bottom, 20)
                    
                    Text("how would you like to a potential employeer to contect you ?")
                        .padding(.bottom, 30)
                    
                    VStack{
                        TextField("example@gmail.com", text: $email)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.black)
                            .padding(.leading, 0)
                            .padding(.trailing, 0)
                            .padding(.bottom, 30)
                        
                        TextField("(91) 777888787", text: $contectno)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.black)
                            .padding(.leading, 0)
                            .padding(.bottom, 30)
                            .padding(.trailing, 0)
                        
                        TextField("www.website.com", text: $website)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.black)
                            .padding(.leading, 0)
                            .padding(.trailing, 0)
                            .padding(.bottom, 30)
                        
                        
                        TextField("address", text: $address)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.black)
                            .padding(.leading, 0)
                            .padding(.trailing, 0)
                    }
                    Text("usually first and last name is required, but feel free to include your middle name as part of the first name ")
                        .padding(.top, 60)
                        .padding(.bottom, 80)
                    Spacer()
                    
                    
                }}
                .padding()
            Spacer()
            VStack{
                Spacer()
                Button(action: {
                    addressdata()
                }, label: {
                    Text("Next")
                })
                .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/13, alignment: .center)
                .background(Color.black)
                .cornerRadius(30)
                
            }
            .padding()
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
    }
    func addressdata() {
        UserDefaults.standard.set(email, forKey: "emails")
        UserDefaults.standard.set(contectno, forKey: "contectnos")
        UserDefaults.standard.set(website, forKey: "websites")
        UserDefaults.standard.set(address, forKey: "addresss")
    }
}

struct address_Previews: PreviewProvider {
    static var previews: some View {
        address()
    }
}
