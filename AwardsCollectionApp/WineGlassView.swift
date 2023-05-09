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
            let size = min(width, height)
            let middle = size / 2
            let spacing = size * 0.1
            
            ZStack {
                ForEach(0..<3) { iteration in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.orange, .blue]),
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                        .frame(width: width * 0.75, height: height * 0.85)
                        .opacity(0.1)
                }
                
                // MARK: - Чаша
                Path { path in
                    path.move(to: CGPoint(x: size * 0.3, y: spacing * 2))
                    
                    path.addLine(to: CGPoint(x: middle, y: middle))
                    
                    path.addLine(to:CGPoint(x: size * 0.7, y: spacing * 2))
                }
                .opacity(0.1)
                
                // MARK: - Напиток
                Path { path in
                    path.move(to: CGPoint(x: size * 0.334, y: spacing * 2.5))
                    
                    path.addLine(to: CGPoint(x: middle, y: middle - 1.1))
                    
                    path.addLine(to:CGPoint(x: size * 0.666, y: spacing * 2.5))
                }
                .fill(.cyan)
                .opacity(0.5)
                
                // MARK: - Палка зонтика
                Path { path in
                    path.move(to: CGPoint(x: size * 0.436, y: spacing * 3.99))
                    path.addLine(to: CGPoint(x: size * 0.826, y: spacing))
                }
                .stroke(style: StrokeStyle())
                
                // MARK: - Шапка зонтика
                Path { path in
                    path.move(to: CGPoint(x: size * 0.826, y: spacing))
                    path.addLine(to: CGPoint(x: size * 0.7, y: spacing))
                    path.addLine(to: CGPoint(x: size * 0.79, y: spacing * 2.1))
                }
                .fill(.orange)
                
                // MARK: - Оливка
                Path { path in
                    path.move(to: CGPoint(x: middle + 10, y: spacing * 3))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: middle + 20, y: spacing * 3 + 7.5),
                        control: CGPoint(x: size * 0.6, y: spacing * 2.7)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: middle + 10, y: spacing * 3),
                        control: CGPoint(x: size * 0.49, y: spacing * 3.6)
                    )
                }
                .fill(Color(red: 0.5, green: 0.5, blue: 0))
                
                // MARK: - Ножка стакана
                Path { path in
                    path.move(to: CGPoint(x: middle, y: middle - 1))
                    
                    path.addLine(to: CGPoint(x: middle, y: size - spacing * 2))
                }
                .stroke(style: StrokeStyle(lineWidth: 4))
                .opacity(0.1)
                
                // MARK: - Подставка
                Path { path in
                    path.move(to: CGPoint(x: size * 0.4, y: size - spacing * 2))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: size - spacing * 2.5),
                        control: CGPoint(x: size * 0.4, y: size * 0.75)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.6, y: size - spacing * 2),
                        control: CGPoint(x: size * 0.6, y: size * 0.75)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: size - spacing * 1.5),
                        control: CGPoint(x: size * 0.6, y: size * 0.85)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.4, y: size - spacing * 2),
                        control: CGPoint(x: size * 0.4, y: size * 0.85)
                    )
                }
                .opacity(0.1)
            }
            
        }
    }
}

struct WineGlassView_Previews: PreviewProvider {
    static var previews: some View {
        WineGlassView()
            .frame(width: 300, height: 300)
    }
}
