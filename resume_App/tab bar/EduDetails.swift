//
//  EduDetails.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 14/05/21.
//

import SwiftUI

struct EduDetails: View {
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy"
        
        return formatter
    }()
    
    let dateFormatters: DateFormatter = {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MM"
        
        return formatter
    }()
    @State private var colleges: [College] = [College]()
   
    
    @State private var years = Date()
    @State private var months = Date()
    
    @State private var School_name = ""
    @State private var degrees = ""
    
    @State private var Eduyearstart = ""

    @State private var Eduyearend = ""
    
    @State private var Educurryears = ""
    
    @State private var iscurrentstuding: Bool = true
    @State private var isToggle: Bool = false
    
    @Binding var showeducationview: Bool
    
    private func populateedu() {
        colleges = coredm.getAllcolleges()
    }
    
    var body: some View {
        NavigationView{
            
            ZStack{
                ScrollView{
                    VStack{
                        VStack(alignment: .leading) {
                            Text("About Your Education")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .padding(.top, 20)
                                .padding(.bottom, 20)
                            
                            Text("which school/university didi you attend and  when?")
                                .frame(height:60, alignment: .leading)
                                .padding(.bottom, 5)
                            
                            TextField("School name", text: $School_name)
                                .font(.system(size: 25))
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                                .padding(.leading, 0)
                                .padding(.trailing, 0)
                            
                        }
                        
                        
                        VStack(alignment: .leading) {
                            Text("Your major/degree ")
                                .padding(.bottom, 2)
                            
                            TextField("Degree", text: $degrees)
                                .font(.system(size: 25))
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                                .padding(.leading, 0)
                                .padding(.trailing, 0)
                            
                        }
                        
                        
                        
                        VStack(alignment: .leading) {
                            Text("What year did you start?")
                                .padding(.bottom, 2)
                            
                            TextField("Year", text: $Eduyearstart)
                                .font(.system(size: 25))
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                                .padding(.leading, 0)
                                .padding(.trailing, 0)
                            
                        }
                        
                        VStack{
                            Toggle(isOn: $iscurrentstuding){
                                
                                Text("Are you still studying here?")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .font(.title)
                                    .foregroundColor(iscurrentstuding ? Color.black : Color.black)
                                
                            }
                        }
                        .padding()
                        
                        VStack{
                            if !iscurrentstuding{
                                
                                VStack(alignment: .leading) {
                                    Text("What year did you stop working?")
                                        .padding(.bottom, 2)
                                    
                                    HStack{
                                        VStack(alignment: .leading) {
                                            Text("What year did you start?")
                                                .padding(.bottom, 2)
                                            
                                            TextField("Year", text: $Eduyearend)
                                                .font(.system(size: 25))
                                            Rectangle()
                                                .frame(height: 1)
                                                .foregroundColor(.black)
                                                .padding(.leading, 0)
                                                .padding(.trailing, 0)
                                            
                                        }
                                        Spacer()
                                        //                                            DatePicker(selection: $Educurryears, in: ...Date(), displayedComponents: .date) {
                                        //
                                        //                                            }
                                        
                                    }
                                    
                                   
                                    
                                }.labelsHidden()
                                .padding()
                            }
                            
                        }
                        
                    }
                    Spacer()
                    VStack{
                        
                        Spacer()
                        HStack{
                            Button(action: {
                                guard !self.School_name.isEmpty else{
                                    return
                                }
                                
                                coredm.saveCollege(college: School_name, degree: degrees, startyear: Eduyearstart, endyear: Eduyearend)
                                populateedu()
                                
//                                self.showeducationview.toggle()
                            }, label: {
                                Text("Save")
                                    .font(.system(size: 20))
                                    .frame(width: UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/15, alignment: .center)
                            })
                            .frame(width: UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/15, alignment: .center)
                            .background(Color.black)
                            .cornerRadius(30)
                        }
                    }
                    
                    
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)

        }
    }
    
}



struct EduDetails_Previews: PreviewProvider {
    static var previews: some View {
        Education()
    }
}
