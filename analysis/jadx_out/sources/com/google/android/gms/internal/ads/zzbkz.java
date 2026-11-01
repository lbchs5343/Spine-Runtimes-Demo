package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import g.agd;
import g.fnd;
import g.fnq;

/* loaded from: classes3.dex */
public final class zzbkz extends zzbkm {
    public static final /* synthetic */ int zza = 0;

    /* renamed from: a, reason: collision with root package name */
    public WebViewClient f4863a;

    /* renamed from: b, reason: collision with root package name */
    public final fnq f4864b;

    /* renamed from: c, reason: collision with root package name */
    public final WebView f4865c;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzbky] */
    public zzbkz(Context context, final WebView webView) {
        context.getClass();
        webView.getClass();
        zzfwq.zzf(webView.getSettings().getJavaScriptEnabled(), "JavaScript must be enabled on the WebView.");
        this.f4865c = webView;
        this.f4864b = new fnq(context, (zzbky) new fnd() { // from class: com.google.android.gms.internal.ads.zzbky
            @Override // g.fnd
            public final void onH5AdsEvent(String str) {
                int i = zzbkz.zza;
                webView.evaluateJavascript(str, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final WebViewClient getDelegate() {
        return this.f4863a;
    }

    @Override // com.google.android.gms.internal.ads.zzbkm, android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        if (!this.f4865c.equals(webView)) {
            agd.d("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
        } else {
            if (((zzbkx) this.f4864b.f17099f).zzb(str)) {
                return;
            }
            super.onLoadResource(webView, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkm, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Object obj = this.f4865c;
        if (!obj.equals(obj)) {
            agd.d("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
            return false;
        }
        if (((zzbkx) this.f4864b.f17099f).zzb(webResourceRequest.getUrl().toString())) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override // com.google.android.gms.internal.ads.zzbkm, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!this.f4865c.equals(webView)) {
            agd.d("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
            return false;
        }
        if (((zzbkx) this.f4864b.f17099f).zzb(str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }

    public final void zza() {
        ((zzbkx) this.f4864b.f17099f).zza();
    }

    public final void zzb(WebViewClient webViewClient) {
        zzfwq.zzf(webViewClient != this, "Delegate cannot be itself.");
        this.f4863a = webViewClient;
    }
}
