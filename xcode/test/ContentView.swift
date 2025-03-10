//
//  ContentView.swift
//  test
//
//  Created by Wen Yu Ge on 2025-03-09.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: testDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(testDocument()))
}
