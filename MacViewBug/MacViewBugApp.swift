//
//  MacViewBugApp.swift
//  MacViewBug
//
//  Created by Martin Davy on 1/28/25.
//

import SwiftUI

@main
struct MacViewBugApp: App {
    
    @State private var viewModel = ViewModel()
    @State var sheetCoordinator = SheetCoordinator<DetailsSheet>()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
                .environment(sheetCoordinator)
        }
    }
}
