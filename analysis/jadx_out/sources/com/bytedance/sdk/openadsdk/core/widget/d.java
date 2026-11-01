package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class d extends AlertDialog {

    /* renamed from: d, reason: collision with root package name */
    protected static volatile AtomicInteger f3687d = new AtomicInteger(0);
    protected String dq;
    private dq ia;
    private Button iw;
    private Button mn;
    private SSWebView ox;
    private Context p;
    private ImageView s;

    public interface dq {
        void d(Dialog dialog);

        void dq(Dialog dialog);

        void ox(Dialog dialog);
    }

    public d(Context context, String str) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.p = context;
        this.dq = str;
        if (TextUtils.isEmpty(str) || !(this.dq.startsWith("https") || this.dq.startsWith("http"))) {
            this.dq = "https://apps.bytesfield.com/app_package_ce/appIntro";
        }
    }

    private View dq(int i) {
        LinearLayout linearLayout = new LinearLayout(this.p);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.p);
        LinearLayout.LayoutParams layoutParams2 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        LinearLayout linearLayout2 = new LinearLayout(this.p);
        LinearLayout.LayoutParams layoutParams3 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.p, 8.0f));
        linearLayout2.setBackground(gradientDrawable);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams3);
        linearLayout.addView(linearLayout2);
        RelativeLayout relativeLayout = new RelativeLayout(this.p);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(this.p);
        this.s = imageView;
        imageView.setMaxHeight(ce.ox(this.p, 46.0f));
        this.s.setMaxWidth(ce.ox(this.p, 46.0f));
        this.s.setMinimumHeight(ce.ox(this.p, 46.0f));
        this.s.setMinimumWidth(ce.ox(this.p, 46.0f));
        this.s.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.bytedance.sdk.openadsdk.res.ox oxVar = new com.bytedance.sdk.openadsdk.res.ox(ce.ox(this.p, 14.0f));
        oxVar.dq(-16777216);
        oxVar.dq(ce.ox(this.p, 2.0f));
        this.s.setImageDrawable(oxVar);
        relativeLayout.addView(this.s);
        TextView textView = new TextView(this.p);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams4.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("应用简介");
        textView.setLayoutParams(layoutParams4);
        relativeLayout.addView(textView);
        linearLayout2.addView(relativeLayout);
        View view2 = new View(this.p);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.p, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view2);
        this.ox = new SSWebView(this.p);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams5.weight = 1.0f;
        this.ox.setLayoutParams(layoutParams5);
        linearLayout2.addView(this.ox);
        View view3 = new View(this.p);
        view3.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.p, 1.0f)));
        view3.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view3);
        LinearLayout linearLayout3 = new LinearLayout(this.p);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout3.setOrientation(0);
        int ox = ce.ox(this.p, 16.0f);
        linearLayout3.setPadding(ox, ox, ox, ox);
        linearLayout3.setLayoutParams(layoutParams6);
        linearLayout2.addView(linearLayout3);
        this.mn = new Button(this.p);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -2);
        int ox2 = ce.ox(this.p, 7.0f);
        layoutParams7.leftMargin = ox2;
        layoutParams7.rightMargin = ox2;
        layoutParams7.weight = 1.0f;
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(-1);
        gradientDrawable2.setCornerRadius(ce.ox(this.p, 3.0f));
        gradientDrawable2.setStroke(ce.ox(this.p, 0.5f), Color.parseColor("#E0161823"));
        this.mn.setBackground(gradientDrawable2);
        int ox3 = ce.ox(this.p, 12.0f);
        this.mn.setText("上一步");
        this.mn.setPadding(0, ox3, 0, ox3);
        this.mn.setTextColor(Color.parseColor("#A8161823"));
        this.mn.setLayoutParams(layoutParams7);
        linearLayout3.addView(this.mn);
        this.iw = new Button(this.p);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, -2);
        layoutParams8.leftMargin = ox2;
        layoutParams8.rightMargin = ox2;
        layoutParams8.weight = 1.0f;
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable3.setCornerRadius(ce.ox(this.p, 3.0f));
        this.iw.setBackground(gradientDrawable3);
        this.iw.setText("立即下载");
        this.iw.setPadding(0, ox3, 0, ox3);
        this.iw.setTextColor(-1);
        this.iw.setLayoutParams(layoutParams8);
        linearLayout3.addView(this.iw);
        if (i == 0) {
            return linearLayout;
        }
        View view4 = new View(this.p);
        view4.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.p, 34.0f)));
        linearLayout2.addView(view4);
        return linearLayout;
    }

    public d dq(dq dqVar) {
        this.ia = dqVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dq() {
        if (this.p.getResources().getConfiguration().orientation == 1) {
            setContentView(dq(1));
        } else {
            setContentView(dq(0));
        }
        this.s.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.f3687d.set(0);
                if (d.this.ia != null) {
                    d.this.ia.d(d.this);
                }
            }
        });
        this.mn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.f3687d.set(0);
                if (d.this.ia != null) {
                    d.this.ia.ox(d.this);
                }
            }
        });
        this.iw.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.d.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.f3687d.set(0);
                if (d.this.ia != null) {
                    d.this.ia.dq(d.this);
                }
            }
        });
        this.ox.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.p, null, 0 == true ? 1 : 0) { // from class: com.bytedance.sdk.openadsdk.core.widget.d.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, WebResourceRequest webResourceRequest) {
                this.ia = d.f3687d;
                return super.dq(webView, webResourceRequest);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, String str) {
                this.ia = d.f3687d;
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
                    String lowerCase = scheme.toLowerCase(Locale.ROOT);
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
        this.ox.setJavaScriptEnabled(true);
        this.ox.setDisplayZoomControls(false);
        this.ox.setCacheMode(2);
        this.ox.dq(this.dq);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        f3687d.set(0);
        dq dqVar = this.ia;
        if (dqVar != null) {
            dqVar.d(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.p == null) {
            this.p = wp.getContext();
        }
        dq();
    }
}
