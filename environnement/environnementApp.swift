//
//  environnementApp.swift
//  environnement
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

@main
struct environnementApp: App {
    @StateObject var networkManager = NetworkStateManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                networkManager.listenForConnextionState()
            }.environmentObject(networkManager)
        }
    }
}
