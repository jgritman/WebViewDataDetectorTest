//
//  SecondViewController.swift
//  WebViewDataDetectorTest
//
//  Created by Jason Gritman on 1/15/19.
//  Copyright © 2019 Jason Gritman. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let configuration =  WKWebViewConfiguration()
        configuration.dataDetectorTypes = [.phoneNumber, .link]

        let webView = WKWebView(frame: self.view.frame, configuration: configuration)
        self.view.addSubview(webView)

        let path = Bundle.main.path(forResource: "test", ofType: "html")!
        let url = URL(fileURLWithPath: path)
        let request = URLRequest(url: url)

        webView.navigationDelegate = self

        webView.load(request)
    }
}

extension WKWebViewController : WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript("addContent('http://helpscout.com')") { (result, error) in
            // ??
        }
    }
}

