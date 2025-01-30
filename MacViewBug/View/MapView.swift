//
//  MapView.swift
//  MacViewBug
//
//  Created by Martin Davy on 1/28/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @Environment(SheetCoordinator<DetailsSheet>.self) private var sheetCoordinator
    
    var body: some View {
        Map {
            
        }
        .safeAreaInset(edge: .bottom) {
            HStack {
                Spacer()
                VStack(spacing: 0) {
                    ButtonsView()
                    .padding(.top)
                }
                Spacer()
            }
            .background(.thinMaterial)
        }
        .sheetCoordinating(coordinator: sheetCoordinator)
    }
}

#Preview {
    MapView()
}
