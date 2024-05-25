//
//  DerpomeetWebView.swift
//  DepromeetMakers
//
//  Created by geonhui Yu on 5/20/24.
//

import SwiftUI

struct DerpomeetWebView: View {
    @StateObject private var viewModel = DepromeetWebViewModel()
    var body: some View {
        WebViewPresentable(url: viewModel.getWebViewUrl())
    }
}

#Preview {
    DerpomeetWebView()
}
