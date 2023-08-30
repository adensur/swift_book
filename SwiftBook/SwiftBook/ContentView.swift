//
//  ContentView.swift
//  SwiftBook
//
//  Created by Maksim Gaiduk on 30/08/2023.
//


import SwiftUI



struct ContentView: View {
    var body: some View {
        CodeView(markdown: """
            ```swift
            struct Animal {
                let nickName : String?
            }
            ```
            """)
    }
}

#Preview {
    ContentView()
}
