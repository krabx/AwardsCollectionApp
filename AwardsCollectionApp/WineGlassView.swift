//
//  WineGlassView.swift
//  AwardsCollectionApp
//
//  Created by Богдан Радченко on 09.05.2023.
//

import SwiftUI

struct WineGlassView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let minimumSize = min(width, height)
            let middle = minimumSize / 2
            let spacing = minimumSize * 0.1
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.3, y: spacing * 2))
                
                path.addLine(to: CGPoint(x: middle, y: middle))
                
                path.addLine(to:CGPoint(x: minimumSize * 0.7, y: spacing * 2))
            }
            .opacity(0.1)
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.334, y: spacing * 2.5))
                
                path.addLine(to: CGPoint(x: middle, y: middle - 1.1))
                
                path.addLine(to:CGPoint(x: minimumSize * 0.666, y: spacing * 2.5))
            }
            .fill(.cyan)
            .opacity(0.5)
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.436, y: spacing * 3.99))
                path.addLine(to: CGPoint(x: minimumSize * 0.826, y: spacing))
            }
            .stroke(style: StrokeStyle())
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.826, y: spacing))
                path.addLine(to: CGPoint(x: minimumSize * 0.7, y: spacing))
                path.addLine(to: CGPoint(x: minimumSize * 0.8, y: spacing * 2.28))
            }
            .fill(.blue)
            
            Path { path in
                path.move(to: CGPoint(x: middle + 10, y: spacing * 3))
                
                path.addQuadCurve(to: CGPoint(x: middle + 20, y: spacing * 3 + 7.5), control: CGPoint(x: minimumSize * 0.6, y: spacing * 2.7))
                
                path.addQuadCurve(to: CGPoint(x: middle + 10, y: spacing * 3), control: CGPoint(x: minimumSize * 0.49, y: spacing * 3.6))
                

            }
            .fill(Color(red: 0.5, green: 0.5, blue: 0))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle - 1))
                
                path.addLine(to: CGPoint(x: middle, y: minimumSize - spacing * 2))
            }
            .stroke(style: StrokeStyle(lineWidth: 4))
            .opacity(0.1)
            
            Path { path in
                path.move(
                    to: CGPoint(
                        x: minimumSize * 0.4,
                        y: minimumSize - spacing * 2
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: middle,
                        y: minimumSize - spacing * 2.5
                    ), control: CGPoint(
                        x: minimumSize * 0.4,
                        y: minimumSize * 0.75
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: minimumSize * 0.6,
                        y: minimumSize - spacing * 2
                    ), control: CGPoint(
                        x: minimumSize * 0.6,
                        y: minimumSize * 0.75
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: middle,
                        y: minimumSize - spacing * 1.5
                    ), control: CGPoint(
                        x: minimumSize * 0.6,
                        y: minimumSize * 0.85
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: minimumSize * 0.4,
                        y: minimumSize - spacing * 2
                    ), control: CGPoint(
                        x: minimumSize * 0.4,
                        y: minimumSize * 0.85
                    )
                )
            }
            .opacity(0.1)
        }
        

        
        
    }
}

struct WineGlassView_Previews: PreviewProvider {
    static var previews: some View {
        WineGlassView()
            .frame(width: 300, height: 300)
    }
}
