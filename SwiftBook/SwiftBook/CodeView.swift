//
//  CodeView.swift
//  SwiftBook
//
//  Created by Maksim Gaiduk on 30/08/2023.
//

import MarkdownUI
import Splash
import SwiftUI

struct CodeView: View {
    @Environment(\.colorScheme) private var colorScheme
    let markdown: String
    
    var body: some View {
        Form {
            Markdown(markdown)
                .markdownCodeSyntaxHighlighter(.splash(theme: self.theme))
                .listRowBackground(Theme.gitHub.textBackgroundColor)
        }
    }
    
    private var theme: Splash.Theme {
        // NOTE: We are ignoring the Splash theme font
        switch self.colorScheme {
        case .dark:
            return .wwdc17(withFont: .init(size: 16))
        default:
            return .sunset(withFont: .init(size: 16))
        }
    }
}

#Preview {
    CodeView(markdown: """
            ```swift
            struct Animal {
                let nickName : String?
            }
            ```
            """)
}
