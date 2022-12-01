//
//  ContentView.swift
//  environnement
//
//  Created by digital on 01/12/2022.
//

import SwiftUI


struct ContentView: View {
    
    var downloader = Downloader()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!").onTapGesture {
                downloader.listenForConnextionState()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
