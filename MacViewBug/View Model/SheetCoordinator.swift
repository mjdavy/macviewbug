//
//  SheetCoordinator.swift
//  HullNext
//
//  Created by Martin Davy on 11/13/24.
//

import SwiftUI

protocol SheetEnum: Identifiable {
    associatedtype Body: View
    
    @ViewBuilder
    func view(coordinator: SheetCoordinator<Self>) -> Body
}

enum DetailsSheet: String, Identifiable, @preconcurrency SheetEnum {
    case view1, view2, view3
    
    var id: String { rawValue }
    
    @MainActor @ViewBuilder
    func view(coordinator: SheetCoordinator<DetailsSheet>) -> some View {
        switch self {
        case .view1:
            View1()
                .presentationBackgroundInteraction(.enabled)
        case .view2:
            View2()
        case .view3:
            View3()
        }
    }
}

struct SheetCoordinating<Sheet: SheetEnum>: ViewModifier {
    @State var coordinator: SheetCoordinator<Sheet>
    
    func body(content: Content) -> some View {
        content
            .sheet(item: $coordinator.currentSheet, onDismiss: {
                coordinator.sheetDismissed()
            }, content: { sheet in
                sheet.view(coordinator: coordinator)
            })
    }
}

extension View {
    func sheetCoordinating<Sheet: SheetEnum>(coordinator: SheetCoordinator<Sheet>) -> some View {
        modifier(SheetCoordinating(coordinator: coordinator))
    }
}

@Observable
final class SheetCoordinator<Sheet: SheetEnum> {
    var currentSheet: Sheet?
    
    func presentSheet(_ sheet: Sheet) {
        currentSheet = sheet
    }
    
    func sheetDismissed() {
        currentSheet = nil
    }
}
