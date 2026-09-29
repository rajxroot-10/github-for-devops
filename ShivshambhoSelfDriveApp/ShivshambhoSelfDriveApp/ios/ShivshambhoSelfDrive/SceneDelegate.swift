import UIKit
import WebKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate, WKNavigationDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let ws = scene as? UIWindowScene else { return }
        let w = UIWindow(windowScene: ws)
        let vc = UIViewController()
        let web = WKWebView(frame: .zero, configuration: WKWebViewConfiguration())
        web.navigationDelegate = self
        web.allowsBackForwardNavigationGestures = true
        vc.view = web
        w.rootViewController = vc
        window = w; w.makeKeyAndVisible()
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") { web.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent()) }
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let url = navigationAction.request.url else { decisionHandler(.allow); return }
        if ["tel", "whatsapp"].contains(url.scheme ?? "") { UIApplication.shared.open(url); decisionHandler(.cancel) } else { decisionHandler(.allow) }
    }
}
