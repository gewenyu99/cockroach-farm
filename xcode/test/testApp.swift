//
//  testApp.swift
//  test
//
//  Created by Wen Yu Ge on 2025-03-09.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: testDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
