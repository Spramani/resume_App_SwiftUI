//
//  Work.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 04/05/21.
//

import SwiftUI

struct Work: View {
    @State private var addWork : Bool = false
    //   @State private var isPresented : Bool = false
    @State var items: FetchedResults<Job>
  
    @State var showSheetView = false
    
    var body: some View {
        //
        //        NavigationView{
        
        ZStack{
            VStack(alignment: .leading){
                Text("Your work Experience")
                    .font(.system(size: 25))
                    .padding(.top, 20)
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                Text("we recommend you and the most recent 1-2 companies that you have work for ")
                    .padding(.leading, 20)
                
                VStack{
                    List{
                        VStack{
                            VStack{
                                ForEach(items) { item in
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text(items.company)
                                            Text("softwere Developer")
                                        }.padding()
                                        Spacer()
                                        Button(action: {}, label: {
                                            Image(systemName: "trash.fill")
                                                .padding()
                                        })
                                    }.background(Color.black.opacity(0.1))
                                    .shadow(color: .black, radius: 15, x: 5, y: 5)
                                    .cornerRadius(10)
                                    
                                           }
                               
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Apple Inc")
                                        Text("softwere Developer")
                                    }.padding()
                                    Spacer()
                                    Button(action: {}, label: {
                                        Image(systemName: "trash.fill")
                                            .padding()
                                    })
                                }.background(Color.black.opacity(0.1))
                                .shadow(color: .black, radius: 15, x: 5, y: 5)
                                .cornerRadius(10)
                            }
                            
                            VStack{
                                Button(action: {
                                    self.showSheetView.toggle()
                                }, label: {
                                    HStack{
                                        Spacer()
                                        Image(systemName: "goforward.plus")
                                            .resizable()
                                            .frame(width: 25, height: 25, alignment: .center)
                                            .foregroundColor(.blue)
                                        
                                        Text("Add work Experiense")
                                        Spacer()
                                    }
                                }).sheet(isPresented: $showSheetView) {
                                    experiance(showSheetView: self.$showSheetView)
                                    
                                }
                                
                            }
                        }
                        
                    }
                    Spacer()
                }
                
            }.padding()
            //            HStack{
            //                Spacer()
            //
            //
            //                Spacer()
            //            }.padding()
            //
            //            Spacer()
        }
        //            }
        
    }
    //        navigationBarTitleDisplayMode(.inline)
    ////            .navigationBarHidden(true)
}

struct Work_Previews: PreviewProvider {
    static var previews: some View {
        Work()
    }
}
