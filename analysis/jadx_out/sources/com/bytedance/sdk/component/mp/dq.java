package com.bytedance.sdk.component.mp;

import android.graphics.Paint;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
public interface dq {
    void d(String str);

    void dq();

    void dq(Object obj, String str);

    void dq(String str);

    void dq(String str, ValueCallback<String> valueCallback);

    String getUrl();

    String getUserAgentString();

    View getView();

    WebView getWebView();

    void removeAllViews();

    void setAllowFileAccess(boolean z);

    void setAllowFileAccessFromFileURLs(boolean z);

    void setAllowUniversalAccessFromFileURLs(boolean z);

    void setBlockNetworkImage(boolean z);

    void setDisplayZoomControls(boolean z);

    void setDomStorageEnabled(boolean z);

    void setJavaScriptEnabled(boolean z);

    void setLayerType(int i, Paint paint);

    void setLoadWithOverviewMode(boolean z);

    void setMediaPlaybackRequiresUserGesture(boolean z);

    void setMixedContentMode(int i);

    void setSavePassword(boolean z);

    void setSupportZoom(boolean z);

    void setUseWideViewPort(boolean z);

    void setUserAgentString(String str);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);
}
