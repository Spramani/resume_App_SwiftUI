//
//  ratingView.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 26/06/21.
//

import SwiftUI

struct ratingView: View {
    @Binding var rating: Int
    
    var label = ""
    var maximumRating = 5
    
    var offImage : Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    
    var body: some View {
        HStack{
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1) { number in
                self.image(for: number)
                    .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                    .onTapGesture {
                        self.rating = number
                    }
            }
        }
    }
    
    func image (for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        }else {
            return onImage
        }
    }
}

struct ratingView_Previews: PreviewProvider {
    static var previews: some View {
        ratingView(rating: .constant(4))
    }
}
