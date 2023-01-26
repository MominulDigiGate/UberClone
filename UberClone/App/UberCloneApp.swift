//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var vmLocationSearch = VmLocationSearch()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(vmLocationSearch)
        }
    }
}

