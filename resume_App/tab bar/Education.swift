//
//  Education.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 04/05/21.
//

import SwiftUI

struct Education: View {
    @State private var addWork : Bool = false
    //   @State private var isPresented : Bool = false
    
    @State var showeducationview = false
    @State private var colleges: [College] = [College]()
    
    private func populateCollege() {
        colleges = coredm.getAllcolleges()
    }
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                
                VStack(alignment: .leading){
                    Text("School, University? ")
                        .font(.system(size: 25))
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .padding(.bottom, 20)
                    Text("we recommend you and the latest intistitution that you've  graduation from ")
                        .padding(.leading, 20)
                    
                    List{
                        
                        ForEach(colleges, id: \.self) { collegess in
                            HStack{
                                VStack(alignment: .leading){
                                    
                                    Text(collegess.cname!)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text(collegess.degree!)
                                    
                                }
                                .padding()
                                Spacer()
                                VStack{Button(action: {
                                    print("trush")
                                }, label: {
                                    Image(systemName: "trash.fill")
                                        .foregroundColor(Color.red)
                                        .padding()
                                    
                                })
                                
                                }
                                .padding(.trailing, 5)
                                .shadow(color: .black, radius: 15, x: 5, y: 5)
                                .cornerRadius(10)
                            }
                            .background(Color.white)
                            .border(Color.black, width: 0)
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 15, x: 5, y: 5)
                             
                        }
                        .onDelete(perform: { indexSet in
                            indexSet.forEach { index in
                                let movs = colleges[index]
                                coredm.deletecollege(college: movs)
                                
                            }
                            
                        })
                        Button(action: {
                            self.showeducationview.toggle()
                        }, label: {
                            HStack{
                                Spacer()
                                Image(systemName: "goforward.plus")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(.blue)
                                
                                Text("Add Education")
                                    .foregroundColor(.blue)
                                
                                Spacer()
                            }
                        })
                        .padding(.bottom, 30)
                        .sheet(isPresented: $showeducationview) {
                            EduDetails(showeducationview: self.$showeducationview)
                               
                            Spacer()
                        }
                        
                    }
                    
                    
                    .onAppear(perform: {
                        populateCollege()
                        UITableView.appearance().separatorStyle = .none
                        
                    })
                    
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

struct Education_Previews: PreviewProvider {
    static var previews: some View {
        Education()
    }
}
