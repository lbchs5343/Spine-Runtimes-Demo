package com.bytedance.sdk.component.utils;

import android.annotation.TargetApi;
import android.webkit.WebView;

/* loaded from: classes.dex */
public class no {
    private static final dq dq = new d();

    @TargetApi(19)
    public static class d extends dq {
        private d() {
            super();
        }

        @Override // com.bytedance.sdk.component.utils.no.dq
        public void dq(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            if (str != null && str.startsWith("javascript:")) {
                try {
                    webView.evaluateJavascript(str, null);
                    return;
                } catch (Throwable th) {
                    boolean z = th instanceof IllegalStateException;
                }
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static class dq {
        private dq() {
        }

        public void dq(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    @Deprecated
    public static void dq(WebView webView, String str) {
        dq.dq(webView, str);
    }

    public static void dq(com.bytedance.sdk.component.mp.dq dqVar, String str) {
        dq.dq(dqVar.getWebView(), str);
    }
}
