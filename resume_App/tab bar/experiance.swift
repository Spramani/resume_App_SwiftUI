//
//  experiance.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 05/05/21.
//

import SwiftUI
import CoreData


var coredm = CoreDataManager()


struct experiance: View {
//
    
    
    var jobed = Job.self
    @State private var jobss: [Job] = [Job]()
  
    @Binding var needreferesh: Bool
    
    
    @State private var Company_name = ""
    @State private var possition = ""
    @State private var start = ""
    @State private var monthstart = ""
    @State private  var yearstart = ""
    @State private var birthDates = ""
    @State private var stopmonth = ""
    @State private var stopyear = ""
    
    @State private var iscurrentwork: Bool = false
    @State private var isToggle: Bool = false
    
    @Binding var showSheetView: Bool
    
    private func populateexperiance() {
        jobss = coredm.getAlljob()
    }
    
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                ScrollView{
                    VStack{
                        VStack(alignment: .leading) {
                            Text("Your work Experience")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .padding(.top, 20)
                                .padding(.bottom, 20)
                            
                            Text("What was the company that you have work or still working for ?")
                                .frame(height:60, alignment: .leading)
                                .padding(.bottom, 5)
                            
                            TextField("Company name", text: $Company_name)
                                .font(.system(size: 25))
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                                .padding(.leading, 0)
                                .padding(.trailing, 0)
                            
                        }
                        
                        
                        VStack(alignment: .leading) {
                            Text("What was your possition?")
                                .padding(.bottom, 2)
                            
                            TextField("Associate", text: $possition)
                                .font(.system(size: 25))
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                                .padding(.leading, 0)
                                .padding(.trailing, 0)
                            
                        }
                        
                        
                        VStack(alignment: .leading) {
                            Text("What month did you start?")
                                .padding(.bottom, 2)
                                .keyboardType(.decimalPad)
                            
                            TextField("month", text: $monthstart)
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
                            
                            TextField("Year", text: $yearstart)
                                .font(.system(size: 25))
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                                .padding(.leading, 0)
                                .padding(.trailing, 0)
                            
                        }
                        
                        VStack{
                            Toggle(isOn: $iscurrentwork){
                                
                                Text("Are you still working here?")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .font(.title)
                                    .foregroundColor(iscurrentwork ? Color.black : Color.black)
                                
                            }
                        }
                        .padding()
                        
                        VStack{
                            if iscurrentwork{
                                VStack{
                                    VStack(alignment: .leading) {
                                        Text("What month did you stop working?")
                                            .padding(.bottom, 2)
                                        
                                            TextField("month", text: $stopmonth)
                                                .font(.system(size: 25))
                                            Rectangle()
                                                .frame(height: 1)
                                                .foregroundColor(.black)
                                                .padding(.leading, 0)
                                                .padding(.trailing, 0)
                                            
                                    }.labelsHidden()
                                    .padding()
                                    
                                    VStack(alignment: .leading) {
                                        Text("What year did you stop working?")
                                            .padding(.bottom, 2)
                                        
                                        TextField("Associate", text: $stopyear)
                                            .font(.system(size: 25))
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundColor(.black)
                                            .padding(.leading, 0)
                                            .padding(.trailing, 0)
                                        
                                            
                                        
                                        
                                       
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
                                    guard !self.Company_name.isEmpty else{
                                        return
                                    }
                                    
                                    coredm.savejob(companyname: Company_name, possion: possition, month: monthstart, year: yearstart,endmonth: stopmonth,endyear: stopyear)
                                    populateexperiance()
                                    self.needreferesh.toggle()
                                    self.showSheetView.toggle()
                                  
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
                }}
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
        
    }
    func shuffle() {
           jobss.shuffle()
           //or listData = dictionary.shuffled().prefix(upTo: 10)
       }
}


struct experiance_Previews: PreviewProvider {
    static var previews: some View {
        let jobed = Job()
    
        experiance(needreferesh: .constant(false), showSheetView: .constant(false))
    }
}
