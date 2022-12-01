//
//  ContentView.swift
//  environnement
//
//  Created by digital on 01/12/2022.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var downloader = Downloader.instance
    @EnvironmentObject var networkManager:NetworkStateManager
    
    var body: some View {
        NavigationView {
            
            VStack {
                Image(uiImage: downloader.monImage)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text(networkManager.connectedState)
                NavigationLink("Vue2") {
                    Vue2()
                }
            }.navigationTitle("next view")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @StateObject static var networkManager = NetworkStateManager()
    static var previews: some View {
        ContentView().environmentObject(networkManager)
    }
}
