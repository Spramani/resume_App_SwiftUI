//
//  Done.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 18/05/21.
//

import SwiftUI

struct DataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
}

struct Done: View {
    @State private var showingSheet = false
    
    let data = (1...100).map { "Item \($0)" }
    
    let columns = [
        GridItem(.adaptive(minimum: UIScreen.main.bounds.width/3))
    ]
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(data, id: \.self) { item in
                        
                        Button(action: {
                           clicks(items: item)
                        }, label: {
                            Image(systemName: "square")
                                .resizable()
                                .frame(width: 150, height: 300, alignment: .center)
                            
                        })
                    }
                }.padding(.horizontal)
                
            }.frame(maxHeight: UIScreen.main.bounds.height)
            
        }.sheet(isPresented: $showingSheet) {
            first()
        }
        
        
        
    }
    func clicks(items: String){
        showingSheet.toggle()
        if items == "Item 1" {
            first()
            
        }else if items == "Item 2"{
            second()
        }
    }
    
}

struct Done_Previews: PreviewProvider {
    static var previews: some View {
        Done()
    }
}
