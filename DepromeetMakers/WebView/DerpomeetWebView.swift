//
//  DerpomeetWebView.swift
//  DepromeetMakers
//
//  Created by geonhui Yu on 5/20/24.
//

import SwiftUI

struct DerpomeetWebView: View {
    var body: some View {
//        NavigationStack {
            WebViewPresentable(url: "https://depromeet-makers.dev")
//        }
    }
}

#Preview {
    DerpomeetWebView()
}
