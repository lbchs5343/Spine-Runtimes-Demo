package com.bytedance.sdk.openadsdk.core.widget.dq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.h.mn;
import g.tn;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class d {
    private WeakReference<Context> dq;

    /* renamed from: d, reason: collision with root package name */
    private boolean f3689d = true;
    private boolean ox = true;
    private boolean p = true;
    private boolean s = true;
    private boolean iw = true;
    private boolean mn = true;
    private boolean ia = true;

    private d(Context context) {
        this.dq = new WeakReference<>(context);
    }

    private void d(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            ig.d(th.toString());
        }
    }

    public static d dq(Context context) {
        return new d(context);
    }

    public static String dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || "0".equals(str2) || !str.contains("{{ad_id}}")) {
            return null;
        }
        return tn.ad("javascript:(function () {    var JS_ACTLOG_URL = '", str.replace("{{ad_id}}", str2), "';    var head = document.getElementsByTagName('head')[0];    var script = document.createElement('script');    script.type = 'text/javascript';    script.src = JS_ACTLOG_URL;    head.appendChild(script);})();");
    }

    private void dq(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th) {
            ig.d(th.toString());
        }
    }

    public d d(boolean z) {
        this.ox = z;
        return this;
    }

    public d dq(boolean z) {
        this.ia = z;
        return this;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0069 -> B:22:0x006c). Please report as a decompilation issue!!! */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void dq(WebView webView) {
        if (webView == null || this.dq.get() == null) {
            return;
        }
        d(webView);
        WebSettings settings = webView.getSettings();
        dq(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (this.ox) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(this.p);
        settings.setDomStorageEnabled(this.s);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(true ^ this.mn);
        settings.setDisplayZoomControls(false);
        if (Build.VERSION.SDK_INT < 28) {
            this.ia = false;
        }
        try {
            boolean z = this.ia;
            if (!z) {
                webView.setLayerType(0, null);
            } else if (z) {
                webView.setLayerType(2, null);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void dq(final com.bytedance.sdk.component.mp.dq dqVar) {
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.widget.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.dq(dqVar.getWebView());
            }
        });
    }
}
