//
//  WKWebView+Ext.swift
//  DepromeetMakers
//
//  Created by geonhui Yu on 5/25/24.
//

import WebKit

extension WKWebView {
    private var httpCookieStore: WKHTTPCookieStore {
        return WKWebsiteDataStore.default().httpCookieStore
    }
    
    // MARK: - 쿠키 가져오기
    func getCookies(completion: @escaping ([String : Any])->())  {
        var cookieDict = [String : AnyObject]()
        httpCookieStore.getAllCookies { cookies in
            for cookie in cookies {
                cookieDict[cookie.name] = cookie.properties as AnyObject?
            }
            completion(cookieDict)
        }
    }
    
    // MARK: - 쿠키 삽입하기
    func setCookie(_ cookie: HTTPCookie) {
        httpCookieStore.setCookie(cookie)
    }
    
    // MARK: - 특정 쿠키 제거하기
    func deleteCookie(_ name: String) {
        httpCookieStore.getAllCookies { [weak self] cookies in
            guard let self = self else { return }
            
            cookies.forEach {
                if $0.name == name {
                    self.httpCookieStore.delete($0)
                }
            }
        }
    }
}
