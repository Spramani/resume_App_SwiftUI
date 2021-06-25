//
//  MovingCircleView.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 25/06/21.
//

import SwiftUI

enum CircleState {
    case left
    case right
    case undefined
}

struct MovingCircleView: View {
    
    // MARK:- variables
    var state: CircleState = .undefined
    
    var moveOffset: CGFloat = 0
    var animationDuration: TimeInterval = 0.3
    
    @State var xOffset: CGFloat = 0
    
    // MARK:- views
    var body: some View {
        Circle()
            .fill(Color.black)
            .frame(width: 30, height: 30)
            .offset(y: xOffset)
            .shadow(color: Color.white, radius: 5)
            .onAppear() {
                if (state == .left) {
                    Timer.scheduledTimer(withTimeInterval: animationDuration, repeats: true) { _ in
                        initiateWithLeft()
                    }
                } else {
                    Timer.scheduledTimer(withTimeInterval: animationDuration, repeats: true) { _ in
                        initiateWithRight()
                    }
                }
            }
    }
    
    // MARK:- functions
    func initiateWithLeft() {
        withAnimation(Animation.easeInOut(duration: animationDuration / 3)) {
            self.xOffset = -moveOffset
        }
        
        Timer.scheduledTimer(withTimeInterval: animationDuration / 2, repeats: false) { _ in
            withAnimation(Animation.easeInOut(duration: 0.5)) {
                self.xOffset = moveOffset
            }
        }
    }
    
    func initiateWithRight() {
        withAnimation(Animation.easeInOut(duration: animationDuration / 2)) {
            self.xOffset = moveOffset
        }
        
        Timer.scheduledTimer(withTimeInterval: animationDuration / 2, repeats: false) { _ in
            withAnimation(Animation.easeInOut(duration: animationDuration / 2)) {
                self.xOffset = -moveOffset
            }
        }
    }
}

struct MovingCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            MovingCircleView(moveOffset: 20, animationDuration: 1)
        }
    }
}
