//
//  WebViewPresentable.swift
//  DepromeetMakers
//
//  Created by geonhui Yu on 5/20/24.
//

import SwiftUI
import WebKit

struct WebViewPresentable: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: url) else {
            return WKWebView()
        }
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: UIViewRepresentableContext<WebViewPresentable>) {
        guard let url = URL(string: url) else { return }
        webView.load(URLRequest(url: url))
    }
}
