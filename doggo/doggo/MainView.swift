//
//  ContentView.swift
//  doggo
//
//  Created by school on 9/30/22.
//

import SwiftUI

struct MainView: View {
    @StateObject var game = gameModel()
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    NavigationLink(destination: PlayView()) {
                        Text("PLAY").font(.system(size: 50)).bold()
                    }
                }
            }
            .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
