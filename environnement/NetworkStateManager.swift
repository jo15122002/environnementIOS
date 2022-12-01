//
//  NetworkStateManager.swift
//  environnement
//
//  Created by digital on 01/12/2022.
//

import Foundation
import Network

class NetworkStateManager:ObservableObject
{
    @Published var connectedState = "Uknown"
    
    var monitor = NWPathMonitor()
    
    func listenForConnextionState(){
        
        monitor = NWPathMonitor()
        
        self.monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                print("We're connected!")
                DispatchQueue.main.async {
                    self.connectedState = "Connected"
                }
            } else {
                print("No connection.")
                DispatchQueue.main.async {
                    self.connectedState = "Not connected"
                }
            }

            print(path.isExpensive)
        }
        
        let queue = DispatchQueue(label: "Monitor")
        monitor.start(queue: queue)
    }
}
