//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .scaleEffect(awardIsShowing ? 2 : 1)
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
            }
            
            Spacer()
            
            if awardIsShowing {
//                GradientRectangles()
//                    .frame(width: 250, height: 250)
//                    .transition(.leadingSlide)
                Text("Welcome, 007")
                    .animation(.easeIn(duration: 5))
                    .font(.title)
                    .foregroundColor(.cyan)
                WineGlassView()
                    .frame(width: 300, height: 300)
                    .transition(.opacityMove)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var opacityMove: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale(scale: 2, anchor: .topLeading)).animation(.easeInOut(duration: 1))
        let removal = AnyTransition.move(edge: .top)
            .combined(with: .opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
