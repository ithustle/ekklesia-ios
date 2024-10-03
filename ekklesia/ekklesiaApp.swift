//
//  ekklesiaApp.swift
//  ekklesia
//
//  Created by Célio Garcia on 25/09/24.
//

import SwiftUI

@main
struct ekklesiaApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem {
                        Symbols.home
                        Text("Início")
                    }
                
                TestamentView()
                    .tabItem {
                        Text("Bible")
                    }
            }
        }
    }
}
