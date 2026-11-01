package g;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* loaded from: classes.dex */
public final class fjy extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16905a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f16906b;

    public /* synthetic */ fjy(KeyEvent.Callback callback, int i) {
        this.f16905a = i;
        this.f16906b = callback;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        switch (this.f16905a) {
            case 1:
                gc gcVar = (gc) this.f16906b;
                gcVar.setProgress(i);
                if (i == 100) {
                    gcVar.hideLoadingProgress();
                }
                webChromeClient = gcVar.webChromeClient;
                if (webChromeClient != null) {
                    webChromeClient2 = gcVar.webChromeClient;
                    webChromeClient2.onProgressChanged(webView, i);
                    break;
                }
                break;
            default:
                super.onProgressChanged(webView, i);
                break;
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        switch (this.f16905a) {
            case 0:
                super.onReceivedTitle(webView, str);
                fyx fyxVar = (fyx) this.f16906b;
                fyxVar.ag(webView.getUrl());
                if (fyxVar.webViewArgs.isAutoSetTitle() && !TextUtils.isEmpty(str)) {
                    fyxVar.setTitle(str);
                }
                if (fyxVar.webViewArgs.isAutoSetSubTitle()) {
                    fyxVar.setSubTitle(fyxVar.webView.getUrl());
                    break;
                }
                break;
            default:
                super.onReceivedTitle(webView, str);
                gc gcVar = (gc) this.f16906b;
                webChromeClient = gcVar.webChromeClient;
                if (webChromeClient != null) {
                    webChromeClient2 = gcVar.webChromeClient;
                    webChromeClient2.onReceivedTitle(webView, str);
                    break;
                }
                break;
        }
    }
}
