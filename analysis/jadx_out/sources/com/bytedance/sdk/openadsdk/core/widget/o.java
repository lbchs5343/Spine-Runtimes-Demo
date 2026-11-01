package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class o extends AlertDialog {
    protected static volatile AtomicInteger p = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    protected Context f3707d;
    protected SSWebView dq;

    /* renamed from: f, reason: collision with root package name */
    private FrameLayout f3708f;
    private int fw;
    private TextView ia;
    private String ig;
    private ImageView iw;
    private TTViewStub jy;
    private TextView kk;
    private ImageView mn;
    private com.bytedance.sdk.openadsdk.core.dislike.ox.d mp;
    private Intent no;
    private com.bytedance.sdk.openadsdk.core.dislike.ui.dq o;
    protected dq ox;
    private TTViewStub q;
    private LinearLayout s;

    public interface dq {
        void dq(Dialog dialog);
    }

    public o(Context context, Intent intent) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.fw = 0;
        this.f3707d = context;
        this.no = intent;
    }

    public static /* synthetic */ int d(o oVar) {
        int i = oVar.fw;
        oVar.fw = i - 1;
        return i;
    }

    public static /* synthetic */ int ox(o oVar) {
        int i = oVar.fw;
        oVar.fw = i + 1;
        return i;
    }

    private void ox() {
        TTViewStub tTViewStub;
        this.f3708f = (FrameLayout) findViewById(2114387637);
        this.q = (TTViewStub) findViewById(2114387775);
        this.jy = (TTViewStub) findViewById(2114387797);
        this.f3708f.addView(this.dq, new LinearLayout.LayoutParams(-1, -1));
        int r = com.bytedance.sdk.openadsdk.core.no.ia().r();
        if (r == 0) {
            TTViewStub tTViewStub2 = this.q;
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
        } else if (r == 1 && (tTViewStub = this.jy) != null) {
            tTViewStub.setVisibility(0);
        }
        ImageView imageView = (ImageView) findViewById(2114387708);
        this.iw = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.o.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    o.p.set(0);
                    SSWebView sSWebView = o.this.dq;
                    if (sSWebView != null && sSWebView.p() && o.this.fw > 1) {
                        o.this.dq.s();
                        o.d(o.this);
                        return;
                    }
                    o.this.dismiss();
                    o oVar = o.this;
                    dq dqVar = oVar.ox;
                    if (dqVar != null) {
                        dqVar.dq(oVar);
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387707);
        this.mn = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.o.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    o.p.set(0);
                    o.this.dismiss();
                    o oVar = o.this;
                    dq dqVar = oVar.ox;
                    if (dqVar != null) {
                        dqVar.dq(oVar);
                    }
                }
            });
        }
        this.ia = (TextView) findViewById(2114387952);
        TextView textView = (TextView) findViewById(2114387630);
        this.kk = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.o.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    o.this.dq();
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void d() {
        j jVar;
        ox();
        if (this.ia != null && (jVar = TTDelegateActivity.dq) != null && !TextUtils.isEmpty(jVar.lk())) {
            this.ia.setText(TTDelegateActivity.dq.lk());
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.f3707d).dq(false).d(false).dq(this.dq);
        this.dq.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.f3707d, null, 0 == true ? 1 : 0) { // from class: com.bytedance.sdk.openadsdk.core.widget.o.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, WebResourceRequest webResourceRequest) {
                this.ia = o.p;
                return super.dq(webView, webResourceRequest);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, String str) {
                this.ia = o.p;
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
                    o.ox(o.this);
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
        this.dq.dq("https://phoniex.toutiao.com");
    }

    public o dq(dq dqVar) {
        this.ox = dqVar;
        return this;
    }

    public void dq() {
        com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar;
        Context context = this.f3707d;
        if (context == null || (dVar = this.mp) == null) {
            return;
        }
        if (this.o == null) {
            com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(context, dVar, this.ig, true);
            this.o = dqVar;
            com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.f3707d, dqVar, TTDelegateActivity.dq);
        }
        this.o.dq();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        p.set(0);
        dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        j jVar;
        super.onCreate(bundle);
        getWindow().clearFlags(131072);
        getWindow().setBackgroundDrawable(new ColorDrawable(-1));
        LinearLayout linearLayout = new LinearLayout(this.f3707d);
        this.s = linearLayout;
        linearLayout.setBackgroundColor(-1);
        this.s.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.s.setOrientation(1);
        this.dq = new SSWebView(this.f3707d);
        if (this.no != null && (jVar = TTDelegateActivity.dq) != null) {
            this.mp = jVar.ez();
            this.ig = this.no.getStringExtra("event_tag");
        }
        setContentView(com.bytedance.sdk.openadsdk.res.s.er(this.f3707d));
        d();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        getWindow().getAttributes().height = ce.s(this.f3707d) - ce.ox(this.f3707d, 50.0f);
    }
}
