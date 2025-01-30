//
//  View2.swift
//  MacViewBug
//
//  Created by Martin Davy on 1/30/25.
//

import SwiftUI

struct View2: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("View 2")
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    View2()
}
