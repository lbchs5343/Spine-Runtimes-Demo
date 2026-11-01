package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class iw extends AlertDialog {
    protected static volatile AtomicInteger iw = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    protected Context f3698d;
    protected SSWebView dq;
    private String mn;
    protected TextView ox;
    protected String p;
    protected dq s;

    public interface dq {
        void dq(Dialog dialog);
    }

    public iw(Context context, String str, String str2) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.f3698d = context;
        this.mn = str2;
        this.p = str;
    }

    public iw dq(dq dqVar) {
        this.s = dqVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dq() {
        this.dq = (SSWebView) findViewById(2114387844);
        this.ox = (TextView) findViewById(2114387917);
        ((TextView) findViewById(2114387699)).setText(this.mn);
        this.ox.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.iw.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                iw.iw.set(0);
                iw iwVar = iw.this;
                dq dqVar = iwVar.s;
                if (dqVar != null) {
                    dqVar.dq(iwVar);
                }
            }
        });
        setCanceledOnTouchOutside(false);
        this.dq.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.f3698d, null, 0 == true ? 1 : 0) { // from class: com.bytedance.sdk.openadsdk.core.widget.iw.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, WebResourceRequest webResourceRequest) {
                this.ia = iw.iw;
                return super.dq(webView, webResourceRequest);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, String str) {
                this.ia = iw.iw;
                return super.dq(webView, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (webView == null) {
                    return true;
                }
                try {
                    if (TextUtils.isEmpty(str)) {
                        return true;
                    }
                    String scheme = Uri.parse(str).getScheme();
                    if (TextUtils.isEmpty(scheme)) {
                        return true;
                    }
                    String lowerCase = scheme.toLowerCase(Locale.getDefault());
                    if (!lowerCase.contains("http") && !lowerCase.contains("https")) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return true;
                }
            }
        });
        this.dq.setJavaScriptEnabled(true);
        this.dq.setDisplayZoomControls(false);
        this.dq.setCacheMode(2);
        this.dq.dq(this.p);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        iw.set(0);
        dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.dq(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.bytedance.sdk.openadsdk.res.s.ds(getContext()));
        dq();
    }
}
