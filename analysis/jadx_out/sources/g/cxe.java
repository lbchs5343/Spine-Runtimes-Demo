package g;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class cxe extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f13681a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gc f13682b;

    public cxe(gc gcVar, Context context) {
        this.f13682b = gcVar;
        this.f13681a = context;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        WebViewClient webViewClient;
        WebViewClient webViewClient2;
        super.onPageFinished(webView, str);
        gc gcVar = this.f13682b;
        gcVar.hideLoadingProgress();
        webViewClient = gcVar.webViewClient;
        if (webViewClient != null) {
            webViewClient2 = gcVar.webViewClient;
            webViewClient2.onPageFinished(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        WebViewClient webViewClient;
        WebViewClient webViewClient2;
        super.onPageStarted(webView, str, bitmap);
        gc gcVar = this.f13682b;
        gcVar.showLoadingProgress();
        webViewClient = gcVar.webViewClient;
        if (webViewClient != null) {
            webViewClient2 = gcVar.webViewClient;
            webViewClient2.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        WebViewClient webViewClient;
        WebViewClient webViewClient2;
        Context context = this.f13681a;
        if (!acw.bj(context)) {
            context.getString(R.string.webview_network_not_contected);
        }
        gc gcVar = this.f13682b;
        webViewClient = gcVar.webViewClient;
        if (webViewClient != null) {
            webViewClient2 = gcVar.webViewClient;
            webViewClient2.onReceivedError(webView, i, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        WebViewClient webViewClient;
        WebViewClient webViewClient2;
        Context context = this.f13681a;
        if (!acw.bj(context)) {
            context.getString(R.string.webview_network_not_contected);
        }
        gc gcVar = this.f13682b;
        webViewClient = gcVar.webViewClient;
        if (webViewClient != null) {
            webViewClient2 = gcVar.webViewClient;
            webViewClient2.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        WebViewClient webViewClient;
        WebViewClient webViewClient2;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        gc gcVar = this.f13682b;
        webViewClient = gcVar.webViewClient;
        if (webViewClient != null) {
            webViewClient2 = gcVar.webViewClient;
            webViewClient2.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebViewClient webViewClient;
        WebViewClient webViewClient2;
        gc gcVar = this.f13682b;
        webViewClient = gcVar.webViewClient;
        if (webViewClient == null) {
            return super.shouldInterceptRequest(webView, str);
        }
        webViewClient2 = gcVar.webViewClient;
        return webViewClient2.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        boolean z;
        WebViewClient webViewClient;
        WebViewClient webViewClient2;
        Context context = this.f13681a;
        gc gcVar = this.f13682b;
        Uri parse = Uri.parse(str);
        if (parse.getScheme().equals("http") || parse.getScheme().equals("https")) {
            return false;
        }
        try {
            context.startActivity(Intent.parseUri(str, 1));
        } catch (Exception unused) {
            z = gcVar.isShowOverrideFailTips;
            if (z) {
                gm.f(context, R.string.webview_open_intent_scheme_fail);
            }
        }
        webViewClient = gcVar.webViewClient;
        if (webViewClient != null) {
            webViewClient2 = gcVar.webViewClient;
            webViewClient2.shouldOverrideUrlLoading(webView, str);
        }
        return true;
    }
}
