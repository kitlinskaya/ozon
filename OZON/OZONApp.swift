//
//  OZONApp.swift
//  OZON
//
//  Created by Macbook on 07.08.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct OZONApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabBar()
                .preferredColorScheme(.dark)
        }
    }
}
