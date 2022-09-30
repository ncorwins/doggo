//
//  PlayView.swift
//  doggo
//
//  Created by school on 9/30/22.
//

import Foundation
import SwiftUI

struct Line {
    var points = [CGPoint]()
    var color: Color = .red
    var lineWidth: Double = 1.0
}


struct PlayView: View {
    @State var drawing = true
    @StateObject var game = gameModel()
    
    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    @State private var thickness: Double = 1.0
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(width: 450, height: 200)
                .position(x: 200, y: 700)
            
            Image("doge").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100).clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 5)).shadow(radius: 6).position(x: 180, y: 548)
            
            Image("bee").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100).position(x: 150, y: 100)
            
            
            if drawing {
                Button(action: {
                    game.startGame()
                }, label: {
                    Text("Done Drawing")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding()
                }).frame(maxHeight: .infinity, alignment: .bottom)
                
                VStack {
                    
                    Canvas { context, size in
                        
                        for line in lines {
                            var path = Path()
                            path.addLines(line.points)
                            context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                        }
                        
                        
                    }
                    .frame(maxWidth: 400, maxHeight: 400)
                    .gesture(DragGesture(minimumDistance: 1, coordinateSpace: .local)
                        .onChanged({ value in
                            let newPoint = value.location
                            currentLine.points.append(newPoint)
                            self.lines.append(currentLine)
                        })
                            .onEnded({ value in
                                self.lines.append(currentLine)
                                self.currentLine = Line(points: [], color: currentLine.color, lineWidth: thickness)
                            })
                    )
                    
                }.padding()
                
                
                
                
                
                
                
            }
            
            
        }
        
    }
}



















struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
