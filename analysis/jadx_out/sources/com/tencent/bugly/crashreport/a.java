package com.tencent.bugly.crashreport;

import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface;

/* loaded from: classes.dex */
public final class a implements CrashReport.a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WebView f9486d;

    public a(WebView webView) {
        this.f9486d = webView;
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final String a() {
        return this.f9486d.getUrl();
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final void a(H5JavaScriptInterface h5JavaScriptInterface, String str) {
        this.f9486d.addJavascriptInterface(h5JavaScriptInterface, str);
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final void a(String str) {
        this.f9486d.loadUrl(str);
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final void b() {
        WebSettings settings = this.f9486d.getSettings();
        if (settings.getJavaScriptEnabled()) {
            return;
        }
        settings.setJavaScriptEnabled(true);
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final CharSequence c() {
        return this.f9486d.getContentDescription();
    }
}
