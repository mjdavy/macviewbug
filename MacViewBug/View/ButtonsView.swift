//
//  ButtonsView.swift
//  MacViewBug
//
//  Created by Martin Davy on 1/30/25.
//

import SwiftUI

struct ButtonsView: View {
    
    @Environment(SheetCoordinator<DetailsSheet>.self) private var sheetCoordinator
    
    var body: some View {
        HStack {
            Spacer()
            Button("Button1") {
                sheetCoordinator.presentSheet(.view1)
            }
            Button("Button2") {
                sheetCoordinator.presentSheet(.view2)
            }
            Button("Button3")
            {
                sheetCoordinator.presentSheet(.view3)
            }
            Spacer()
        }
    }
}

#Preview {
    ButtonsView()
}
