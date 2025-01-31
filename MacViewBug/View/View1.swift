//
//  View1.swift
//  MacViewBug
//
//  Created by Martin Davy on 1/30/25.
//

import SwiftUI

struct View1: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(ViewModel.self) private var viewModel
    
    var body: some View {
        VStack {
            Text("View 1")
            Spacer()
            
            ForEach(viewModel.data, id: \.self) { item in
                Text(item)
            }
            
            Spacer()
            Button("Dismiss") {
                dismiss()
            }
            .padding()
        }
       
     
        .padding()
    }
    
}

#Preview {
    View1()
}
