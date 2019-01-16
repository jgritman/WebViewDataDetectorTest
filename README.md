This is an example iOS app to demonstrate a difference in behavior between `UIWebView` and `WKWebView`. There are two tab views performing the same function:

1. Show a web view with datadetectors enabled. 
1. Load an HTML page that displays with a URL in the text (so the URL is turned into a link).
1. Via the JavaScript bridging, add another url to the HTML page

For the `UIWebView` case the data detectors pick up the change, but the `WKWebView` implementation only adds a link to the url that was on the intial page load.
