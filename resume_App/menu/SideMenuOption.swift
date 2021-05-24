//
//  SideMenuOption.swift
//  sidemenu_SwiftUI
//
//  Created by Adsum MAC 2 on 19/04/21.
//

import SwiftUI

struct SideMenuOption: View {
    
    let viewmodel:SideMenuViewModel
    var body: some View {
        HStack{
            Image(systemName: viewmodel.imageName)
                .frame(width: 24, height: 24, alignment: .center)
            Text(viewmodel.title)
                .font(.system(size: 20, weight: .semibold))
            Spacer()
        }
       
        .padding()
    }
}

struct SideMenuOption_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOption(viewmodel: .profile)
    }
}
