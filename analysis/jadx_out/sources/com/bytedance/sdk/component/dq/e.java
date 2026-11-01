package com.bytedance.sdk.component.dq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import g.awf;
import g.tn;

/* loaded from: classes.dex */
public class e extends dq {
    static final /* synthetic */ boolean o = true;
    protected String ia;
    protected com.bytedance.sdk.component.mp.dq kk;

    private void dq(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.p.post(runnable);
        }
    }

    private void dq(String str, final String str2) {
        if (this.iw || TextUtils.isEmpty(str2)) {
            return;
        }
        dq(new Runnable() { // from class: com.bytedance.sdk.component.dq.e.1
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.iw) {
                    return;
                }
                try {
                    kk.dq("Invoking Jsb using evaluateJavascript: " + str2);
                    e.this.kk.dq(str2, (ValueCallback<String>) null);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.dq
    public void d() {
        super.d();
        p();
    }

    @Override // com.bytedance.sdk.component.dq.dq
    public String dq() {
        return this.kk.getUrl();
    }

    @Override // com.bytedance.sdk.component.dq.dq
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public void dq(o oVar) {
        this.kk = oVar.dq;
        this.ia = oVar.ox;
        if (oVar.q) {
            return;
        }
        ox();
    }

    @Override // com.bytedance.sdk.component.dq.dq
    public void dq(String str) {
        dq(str, awf.r(new StringBuilder("javascript:"), this.ia, "._handleMessageFromToutiao(", str, ")"));
    }

    @Override // com.bytedance.sdk.component.dq.dq
    public void dq(String str, f fVar) {
        if (fVar == null || TextUtils.isEmpty(fVar.ia)) {
            super.dq(str, fVar);
            return;
        }
        String str2 = fVar.ia;
        dq(str, awf.ad(tn.o("javascript:(function(){   const iframe = document.querySelector(atob('", Base64.encodeToString(("iframe[src=\"" + str2 + "\"").getBytes(), 2), "'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(", str, ", atob('"), Base64.encodeToString(str2.getBytes(), 2), "'));   }})()"));
    }

    @Override // com.bytedance.sdk.component.dq.dq
    public Context getContext(o oVar) {
        Context context = oVar.s;
        if (context != null) {
            return context;
        }
        com.bytedance.sdk.component.mp.dq dqVar = oVar.dq;
        if (dqVar != null) {
            View view = dqVar.getView();
            if (view != null) {
                return view.getContext();
            }
            WebView webView = oVar.dq.getWebView();
            if (webView != null) {
                return webView.getContext();
            }
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @Override // com.bytedance.sdk.component.dq.dq
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }

    @SuppressLint({"AddJavascriptInterface"})
    public void ox() {
        if (!o && this.kk == null) {
            throw new AssertionError();
        }
        com.bytedance.sdk.component.mp.dq dqVar = this.kk;
        if (dqVar != null) {
            dqVar.dq(this, this.ia);
        }
    }

    public void p() {
        com.bytedance.sdk.component.mp.dq dqVar = this.kk;
        if (dqVar != null) {
            dqVar.d(this.ia);
        }
    }
}
