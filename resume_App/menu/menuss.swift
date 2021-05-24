//
//  menuss.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 24/05/21.
//

import SwiftUI

struct menuss: View {
    
    var name: String
    var image: String
    
  
    @Binding var selectmenu: String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selectmenu = name
            }
        }, label: {
            HStack(spacing: 15){
                
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selectmenu == name ? .black : .white)
                Text(name)
                    .foregroundColor(selectmenu == name ? .black : .white)
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
            .frame(width: 200)
            .background(
                ZStack{
                    if selectmenu == name {
                        Color.white
                            .cornerRadius(10)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }else {
                        Color.clear
                    }
                }
            )
            
            
            .cornerRadius(15)
        })
        
    }
}

struct menuss_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class MenuviewModel: ObservableObject {
    
    @Published var selectedMenu = "ContentView"
    
    //close buton
    @Published var showDrawer = false
}
