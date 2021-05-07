//
//  experiance.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 05/05/21.
//

import SwiftUI
import CoreData

struct dataStore : Identifiable {
    var id = UUID()
    let companyname:String
    let possion:String
    let month:Date
    let year:Date
}
struct experiance: View {

    @Environment(\.managedObjectContext) private var viewContext

      @FetchRequest(
          sortDescriptors: [NSSortDescriptor(keyPath: \Job.company, ascending: true)],
          animation: .default)
      private var items: FetchedResults<Job>
    
    
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
    
    
    private func addItem() {
        let newItem = Job(context: viewContext)
        newItem.company = Company_name
        newItem.possion = possition
        newItem.months = monthstart
        newItem.years = yearstart
        
        do {
            try viewContext.save()
        } catch {
            // Error handling
        }
    }
    
    
    @State var storedata : [dataStore] = []
    @State private var years = Date()
    @State private var months = Date()
    
    @State var Company_name = ""
    @State var possition = ""
    @State var start = ""
    @State var monthstart = ""
    @State var yearstart = ""
    @State var birthDates = ""
    @State var stopmonth = ""
    @State var stopyear = ""
    
    @State private var iscurrentwork: Bool = false
    @State private var isToggle: Bool = false
    
    @Binding var showSheetView: Bool
    
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
                                        
                                        HStack{
                                            Text("\(months, formatter: dateFormatters)")
                                            Spacer()
                                            DatePicker(selection: $months, in: ...Date(), displayedComponents: .date) {
                                                
                                            }
                                            
                                        }
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
                                        
                                        HStack{
                                            Text("\(years, formatter: dateFormatter)")
                                            Spacer()
                                            DatePicker(selection: $years, in: ...Date(), displayedComponents: .date) {
                                                
                                            }
                                            
                                        }
                                        
                                        //
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
                                    
                                    addItem()
                                    storedata.append(dataStore(companyname: Company_name, possion: possition, month: months, year: years))
                                    
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
}


struct experiance_Previews: PreviewProvider {
    static var previews: some View {
       experiance()
    }
}
