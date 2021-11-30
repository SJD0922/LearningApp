//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by PM HTML5 - Stevie Davis  on 11/30/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
