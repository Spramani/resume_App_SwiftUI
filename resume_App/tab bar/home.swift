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
    
    @State private var showSheet:Bool  = false
    @State private var showImagePicker:Bool  = false
    @State private var sourceType:
        UIImagePickerController.SourceType = .camera
    
    @State public var image: UIImage?
    
    @State public var imges = UserDefaults.standard.data(forKey: "imagesss")
    
    
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        HStack{
                            
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
                            
                            
                            
                            
                            Button(action: {
                                showSheet = true
                            }, label: {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .background(Color.black)
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .clipShape(Circle())
                            })
                            .padding(.top, 60)
                            .padding(.leading, -32)
                            
                            .actionSheet(isPresented: $showSheet){
                                ActionSheet(title: Text("Select photo"), message: Text("Choose"), buttons: [.default(Text("Photo library")){
                                    self.showImagePicker = true
                                    self.sourceType = .photoLibrary
                                },
                                .default(Text("camera")){
                                    self.showImagePicker = true
                                    self.sourceType = .camera
                                },
                                .cancel()
                                ])
                            }
                            
                        }
                        
                    }
                    VStack(alignment: .leading){
                        Text("Let`s get startes with your name")
                            .font(.system(size: 25))
                            .padding(.bottom, 20)
                        Text("Whats is your name?")
                            .padding(.bottom, 30)
                        TextField("First Name", text: $firstname) {
                            UserDefaults.standard.set(firstname, forKey: "firstname")
                        }
                        
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
                            .padding(.bottom, 80)
                        Spacer()
                        
                        
                    }}
                    .padding()
                Spacer()
                VStack{
                    Spacer()
                    
                    Button(action: {
                        let data = image?.jpegData(compressionQuality: 1)
                        let str = data?.base64EncodedString()
                        
                        userdata()
                        
                        coredm.saveabout(firstname: firstname, middlename: middlename, lastname: lastname)
                        print(coredm.getallAbout())
                    }, label: {
                        Text("Next") .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/13, alignment: .center)
                            .background(Color.black)
                            .cornerRadius(30)
                    })
                    
                }
                .padding()
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
            
        }
    }
    func userdata() {
       
        UserDefaults.standard.set(lastname, forKey: "lastname")
        UserDefaults.standard.set(middlename, forKey: "middlename")
        //        UserDefaults.standard.set(image, forKey: "images")
        
        
    }
    
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
