package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class ig extends AlertDialog {
    protected static volatile AtomicInteger dq = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    private SSWebView f3697d;
    private RelativeLayout ia;
    private dq iw;
    private RelativeLayout kk;
    private String mn;
    private ImageView no;
    private ImageView o;
    private Context ox;
    private TextView p;
    private String s;

    public interface dq {
        void dq(Dialog dialog);
    }

    public ig(Context context, String str) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.mn = str;
        this.ox = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void d() {
        this.f3697d = (SSWebView) findViewById(2114387768);
        TextView textView = (TextView) findViewById(2114387655);
        this.p = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ig.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ig.this.iw != null) {
                    ig.this.iw.dq(ig.this);
                }
            }
        });
        setCanceledOnTouchOutside(false);
        this.f3697d.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.ox, null, 0 == true ? 1 : 0) { // from class: com.bytedance.sdk.openadsdk.core.widget.ig.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, WebResourceRequest webResourceRequest) {
                this.ia = ig.dq;
                return super.dq(webView, webResourceRequest);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, String str) {
                this.ia = ig.dq;
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
                    String lowerCase = scheme.toLowerCase(Locale.US);
                    if (!lowerCase.contains("http") && !lowerCase.contains("https")) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }
        });
        this.f3697d.setJavaScriptEnabled(true);
        this.f3697d.setDisplayZoomControls(false);
        this.f3697d.setCacheMode(2);
        this.f3697d.dq(this.s);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2114387888);
        this.ia = relativeLayout;
        relativeLayout.setVisibility(0);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(2114387899);
        this.kk = relativeLayout2;
        relativeLayout2.setVisibility(8);
        this.p.setVisibility(8);
        this.o = (ImageView) findViewById(2114387818);
        this.no = (ImageView) findViewById(2114387841);
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ig.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ig.this.iw != null) {
                    ig.this.iw.dq(ig.this);
                    ig.dq.set(0);
                }
            }
        });
        this.no.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ig.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Toast makeText = Toast.makeText(ig.this.ox, "", 1);
                try {
                    ((ClipboardManager) ig.this.ox.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, ig.this.s));
                    makeText.setText("链接复制成功");
                } catch (Throwable th) {
                    th.printStackTrace();
                    makeText.setText("链接复制失败");
                }
                makeText.show();
            }
        });
    }

    public ig dq(dq dqVar) {
        this.iw = dqVar;
        return this;
    }

    public void dq() {
        String a2 = wp.d().a();
        if (TextUtils.isEmpty(a2)) {
            this.s = "https://www.pangle.cn/privacy/partner";
        } else {
            this.s = a2;
        }
        if (TextUtils.isEmpty(this.mn)) {
            return;
        }
        if (this.s.contains("?")) {
            this.s += "&ad_info=" + this.mn;
            return;
        }
        this.s += "?ad_info=" + this.mn;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        dq.set(0);
        dq dqVar = this.iw;
        if (dqVar != null) {
            dqVar.dq(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.bytedance.sdk.openadsdk.res.s.vf(this.ox));
        d();
        dq();
    }
}
