//
//  Summary.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 17/05/21.
//

import SwiftUI

struct Summary: View {
    @State private var text = ""
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("You are almost done")
                        .font(.system(size: 25))
                    Spacer()
                    Button(action: {}, label: {
                        Text("Done")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                    })
                }
                .padding(.leading, 35)
                .padding(.trailing, 35)
                
                VStack{
//                    Text("sd")
//                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2, alignment: .center)
//                        .background(Color.blue)}
//                    .padding()
                    TextEditor(text: $text)
                        .padding()
                        .border(Color.black, width: 5)
                        .frame(width: UIScreen.main.bounds.width/1.12, height: UIScreen.main.bounds.height / 2.3, alignment: .center)
                        
                        .cornerRadius(8)
                      
                }
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

struct Summary_Previews: PreviewProvider {
    static var previews: some View {
        Summary()
    }
}
