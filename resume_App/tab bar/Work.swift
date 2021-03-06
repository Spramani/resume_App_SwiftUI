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
    
    @State var showSheetView = false
    @State private var jobss: [Job] = [Job]()
    
    @State private var needreferesh:Bool = false
    
    private func populatejob() {
        jobss = coredm.getAlljob()
    }
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                
                VStack(alignment: .leading){
                    Text("Your work Experience")
                        .font(.system(size: 25))
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .padding(.bottom, 20)
                    Text("we recommend you and the most recent 1-2 companies that you have work for ")
                        .padding(.leading, 20)
                    
                    
                    
                    List{
                        ForEach(jobss, id: \.self) { movie in
                            
                            
                                
                                    HStack{
                                        
                                        VStack(alignment: .leading){
                                            
                                            Text(movie.company!)
                                                .font(.title2)
                                                .fontWeight(.bold)
                                            Text(movie.possion!)
                                            
                                        }
                                        .padding()
                                        Spacer()
                                        VStack{
                                            Button(action: {
                                                print("trush")
                                            }, label: {
                                                Image(systemName: "trash.fill")
                                                
                                                
                                            }).frame(width: 60, height: 50, alignment: .center)
                                            .background(Color.black.opacity(0.1))
                                            .padding(.trailing, 5)
                                            .shadow(color: .black, radius: 15, x: 5, y: 5)
                                            .cornerRadius(10)
                                            
                                        }
                                    }
                                
                           
                           
                            
                        }
                        
                        .onDelete(perform: { indexSet in
                            indexSet.forEach { index in
                                let mov = jobss[index]
                                coredm.deletejob(movie: mov)
                                populatejob()
                            }
                            
                        })
                        .background(Color.blue)
                        .border(Color.black, width: 0)
                        .cornerRadius(10)
                        .shadow(color: .black, radius: 15, x: 5, y: 5)
                        
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
                        })
                        .padding(.bottom, 30)
                        .sheet(isPresented: $showSheetView) {
                            experiance(needreferesh: $needreferesh, showSheetView: self.$showSheetView)
                                .onAppear{
                                    populatejob()
                                }
                            Spacer()
                        }
                        
                    }
                    .onAppear(perform: {
                        populatejob()
                        UITableView.appearance().separatorStyle = .none
                    })
                    .listStyle(PlainListStyle())
                    .accentColor(needreferesh ? .blue : .black)
                  
                 
                }
                Spacer()
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
struct Work_Previews: PreviewProvider {
    static var previews: some View {
        Work()
    }
}
