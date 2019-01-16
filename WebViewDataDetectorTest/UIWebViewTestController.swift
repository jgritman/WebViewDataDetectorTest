//
//  FirstViewController.swift
//  WebViewDataDetectorTest
//
//  Created by Jason Gritman on 1/15/19.
//  Copyright © 2019 Jason Gritman. All rights reserved.
//

import UIKit

class UIWebViewTestController: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.dataDetectorTypes = .link
        let path = Bundle.main.path(forResource: "test", ofType: "html")
        webView.delegate = self
        webView.loadRequest(URLRequest(url: URL.init(fileURLWithPath: path!)))
    }
}

extension UIWebViewTestController : UIWebViewDelegate {
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webView.stringByEvaluatingJavaScript(from: "addContent('http://helpscout.com')")
    }
}

