//
//  Softwere.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 17/05/21.
//

import SwiftUI

struct Softwere: View {
    @State var basicselecttab = scoreTabs.basicTab
    //    @State private var soft
    @State private var softweress: [Softweres] = [Softweres]()
    
    private func populatesoftwere() {
        softweress = coredm.getAllsoftwere()
    }
  
    @State private var showactionsheet = false
    @State private var basics = false
    
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading){
                    Text("Any Softwere skill to brag about ?")
                        .padding()
                        .font(.title2)
                    Text("Select a Skill then rate it")
                        .padding(.top, 5)
                        .padding(.leading, 15)
                    
                    VStack{
                        List{
                            ForEach(softweress, id: \.id){ softweres in
                                VStack{
                                    VStack{
                                    HStack{
                                        Text(softweres.softname!)
                                            .padding()
                                        Spacer()
                                        Button(action: {
                                            print("trush")
                                        }, label: {
                                            Image(systemName: "trash.fill")
                                                .foregroundColor(Color.red)
                                                .padding()
                                            
                                        }).onTapGesture {
                                            print("sdfsdfsddfsd")
                                        }
                                    }
                                    
                                }
                                HStack{
                                    Button(action: {print("Basic")} , label: {
                                        Text("Basic")
                                            .foregroundColor(basicselecttab == .basicTab ? Color.blue : Color.black)
                                    }).onTapGesture {
                                        self.basicselecttab = .basicTab
                                        print("sdfsdfsddfsd")
                                    }
                                    Button(action: {print("good")} , label: {
                                        Text("good")
                                            .foregroundColor(basicselecttab == .goodTab  ? Color.blue : Color.black)
                                    }).onTapGesture {
                                        self.basicselecttab = .goodTab
                                        print("sdfsdfsddfsd")
                                    }
                                    Button(action: {print("button click")} , label: {
                                        Text("Very good")
                                            .foregroundColor(basicselecttab == .verygoodTab ? Color.blue : Color.black)
                                    }).onTapGesture {
                                        self.basicselecttab = .verygoodTab
                                        print("sdfsdfssadsdasdasdddfsd")
                                    }
                                    Button(action: {print("button click")} , label: {
                                        Text("Excellent")
                                            .foregroundColor(basicselecttab == .ExcellentTab ? Color.blue : Color.black)
                                    }).onTapGesture {
                                        self.basicselecttab = .ExcellentTab
                                        print("sdfsdfssadsdasdasdddfsd")
                                    }
                                    Spacer()
                                    
                                }
                                .padding(.bottom, 10)
                                .padding(.leading, 15)
                                    
                                } .background(Color.white)
                                    .border(Color.black, width: 0)
                                    .cornerRadius(10)
                                    .shadow(color: .black, radius: 5, x: 5, y: 5)
                                
                            }
                            .onDelete(perform: { indexSet in
                                indexSet.forEach { index in
                                    
                                    let delsoft = softweress[index]
                                    coredm.deletesoftwere(delsoft: delsoft)
                                  
                                }
                                
                            })
                            Button(action: {
                                self.showactionsheet = true
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
                        .padding(.bottom, 20)
                        .onAppear(perform: {
                    
                            populatesoftwere()
                        })
                        
                        
                    }
                    
                    }
                .actionSheet(isPresented: $showactionsheet) {
                    ActionSheet(title: Text("select softwere"), message: Text("select message"), buttons: [.default(Text("Microsoft Excell")) {coredm.savesoftwere(softwe: "Microsoft Excell", basicscore: "sa")},
                                                                                                           .default(Text("Microsoft PowerPoint")) {coredm.savesoftwere(softwe: "Microsoft PowerPoint", basicscore: "sa"); populatesoftwere()},
                                                                                                           .default(Text("Microsoft windows")) {coredm.savesoftwere(softwe: "Microsoft windows", basicscore: "dsf"); populatesoftwere()},
                                                                                                           .default(Text("PHP")) {coredm.savesoftwere(softwe: "PHP", basicscore: "dsf"); populatesoftwere()},
                                                                                                           .default(Text("HTML")) {coredm.savesoftwere(softwe: "HTML", basicscore: "df"); populatesoftwere()},
                                                                                                           .default(Text("Xcode")) {coredm.savesoftwere(softwe: "Xcode", basicscore: "d"); populatesoftwere()},
                                                                                                           .default(Text("photoshope")) {coredm.savesoftwere(softwe: "photoshope", basicscore: "dfw"); populatesoftwere()},
                                                                                                           .default(Text("Wordpress")) {coredm.savesoftwere(softwe: "Wordpress", basicscore: "erw"); populatesoftwere()},
                                                                                                           .default(Text("Slack")) {coredm.savesoftwere(softwe: "Slack", basicscore: "wer"); populatesoftwere()},
                                                                                                           .default(Text("Keynote")) {coredm.savesoftwere(softwe: "Keynote", basicscore: "ew"); populatesoftwere()},
                                                                                                           .default(Text("Apache")) {coredm.savesoftwere(softwe: "Apache", basicscore: "qwe"); populatesoftwere()},
                                                                                                           .cancel(Text("cancel"))])
                    
            
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
        }
    }
}
    struct Softwere_Previews: PreviewProvider {
        static var previews: some View {
            Softwere()
        }
    }

enum scoreTabs {
    case basicTab
    case goodTab
    case verygoodTab
    case ExcellentTab
    case FifthTab
    case SixTab
}
