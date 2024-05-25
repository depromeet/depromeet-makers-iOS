//
//  Bundle+Ext.swift
//  DepromeetMakers
//
//  Created by geonhui Yu on 5/25/24.
//

import Foundation

extension Bundle {
    var webViewUrl: String? {
        return Self.main.object(forInfoDictionaryKey: "WEBVIEW_URL") as? String ?? ""
    }
}
