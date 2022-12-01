//
//  Vue2.swift
//  environnement
//
//  Created by digital on 01/12/2022.
//

import SwiftUI

struct Vue2: View {
    
    @EnvironmentObject var networkManager:NetworkStateManager
    @ObservedObject var downloader = Downloader.instance
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Image(uiImage: downloader.monImage).onAppear{
            downloader.downloadImage(urlString: "https://cataas.com/cat/says/hi")
        }
    }
}

struct Vue2_Previews: PreviewProvider {
    @StateObject static var downloader = Downloader()
    static var previews: some View {
        Vue2().environmentObject(downloader)
    }
}
