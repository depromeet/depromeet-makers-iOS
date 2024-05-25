//
//  DepromeetWebViewModel.swift
//  DepromeetMakers
//
//  Created by geonhui Yu on 5/25/24.
//

import Foundation

final class DepromeetWebViewModel: ObservableObject {}

extension DepromeetWebViewModel {
    func getWebViewUrl() -> String {
        guard let webViewUrl = Bundle.main.webViewUrl else {
            return "https://www.depromeet.com/"
        }
        return webViewUrl
    }
}
