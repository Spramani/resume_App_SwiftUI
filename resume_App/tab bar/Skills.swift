//
//  Skills.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 14/05/21.
//

import SwiftUI

struct Skills: View {
    @State private var Textfield = ""
    @State private var skillss: [Skill] = [Skill]()
    
    private func populateskill() {
           skillss = coredm.getAllskill()
       }
    
    
    var body: some View {
        NavigationView{
            ZStack{
                
                VStack(alignment: .leading){
                    Text("What other skills do you have?  ")
                        .font(.title2)
                        .padding()
                    
                    Text("Tell us about your skills,Add only the most important skills")
                        .padding()
                    
                    TextField("Ex: multi-tasking", text: $Textfield)
                        .padding(.leading)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    List{
                        ForEach(skillss, id: \.self){ skills in
                            VStack{
                                HStack{
                                    Text(skills.skill!)
                                        .padding()
                                Spacer()
                                Button(action: {
                                    print("trush")
                                }, label: {
                                    Image(systemName: "trash.fill")
                                        .foregroundColor(Color.red)
                                        .padding()
                                    
                                })
                            } .background(Color.white)
                                .border(Color.black, width: 0)
                                .cornerRadius(10)
                                .shadow(color: .black, radius: 5, x: 5, y: 5)
                                
                            }

                        }
                        .onDelete(perform: { indexSet in
                            indexSet.forEach { index in
                                let skillss = skillss[index]
                                coredm.deleteskill(skill: skillss)
                                Textfield = ""
                            }
                            
                        })
                        Button(action: {coredm.saveSkill(skill: Textfield)
                            populateskill()
                        }, label: {
                            HStack{
                                Spacer()
                                Image(systemName: "goforward.plus")
                                    .resizable()
                                    .background(Color.white)
                                    .frame(width: 30, height: 30, alignment: .leading)
                                    Text("Add this skill")
                                        .padding(.leading, 5)
                                Spacer()
                            }
                            .foregroundColor(.blue)
                            .padding()
                        })
                       
                        
                    }
                    .padding(.bottom, 30)
                    .onAppear(perform: {
                        populateskill()
                       
                    })
                   
                    
                    Spacer()
                    
                }
                Spacer()
                VStack{
                    Spacer()
                    Button(action: {}, label: {
                        Text("Next")
                    })
                    .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/13, alignment: .center)
                    .background(Color.black)
                    .cornerRadius(30)
                    
                    
                    
                }
                .padding()
                
               
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

struct Skills_Previews: PreviewProvider {
    static var previews: some View {
        Skills()
    }
}
