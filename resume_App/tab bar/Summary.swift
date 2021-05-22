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
                    Button(action: {
                        coredm.savesummary(summaryTxt: text)
                    }, label: {
                        Text("Done")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                    })
                }
                .padding(.leading, 35)
                .padding(.trailing, 35)
                
                VStack{

                    TextEditor(text: $text)
                        .padding()
                        .border(Color.black, width: 5)
                        .frame(width: UIScreen.main.bounds.width/1.12, height: UIScreen.main.bounds.height / 2.3, alignment: .center)
                        
                        .cornerRadius(8)
                      
                }
//                VStack{
//                    Spacer()
//                    Button(action: {}, label: {
//                        Text("Next")
//                    })
//                    .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/13, alignment: .center)
//                    .background(Color.black)
//                    .cornerRadius(30)
//                    
//                    
//                    
//                }
//                .padding()
       
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
