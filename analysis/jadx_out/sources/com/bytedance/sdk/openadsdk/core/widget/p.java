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
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p extends AlertDialog {
    protected static volatile AtomicInteger dq = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    private SSWebView f3712d;
    private dq ia;
    private Button iw;
    private String kk;
    private String mn;
    private Context ox;
    private ImageView p;
    private Button s;

    public interface dq {
        void d(Dialog dialog);

        void dq(Dialog dialog);

        void ox(Dialog dialog);
    }

    public p(Context context, String str) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.ox = context;
        this.kk = str;
    }

    private LinearLayout d(int i, LinearLayout linearLayout, LinearLayout linearLayout2) {
        LinearLayout linearLayout3 = new LinearLayout(this.ox);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout3.setOrientation(0);
        int ox = ce.ox(this.ox, 16.0f);
        linearLayout3.setPadding(ox, ox, ox, ox);
        linearLayout3.setLayoutParams(layoutParams);
        linearLayout2.addView(linearLayout3);
        this.iw = new Button(this.ox);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        int ox2 = ce.ox(this.ox, 7.0f);
        layoutParams2.leftMargin = ox2;
        layoutParams2.rightMargin = ox2;
        layoutParams2.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.ox, 3.0f));
        gradientDrawable.setStroke(ce.ox(this.ox, 0.5f), Color.parseColor("#E0161823"));
        this.iw.setBackground(gradientDrawable);
        int ox3 = ce.ox(this.ox, 12.0f);
        this.iw.setText("上一步");
        this.iw.setPadding(0, ox3, 0, ox3);
        this.iw.setTextColor(Color.parseColor("#A8161823"));
        this.iw.setLayoutParams(layoutParams2);
        linearLayout3.addView(this.iw);
        return dq(i, linearLayout, linearLayout2, linearLayout3, ox2, ox3);
    }

    private void d() {
        if (this.ox == null) {
            this.ox = wp.getContext();
        }
        if (this.ox.getResources().getConfiguration().orientation == 1) {
            setContentView(dq(1));
        } else {
            setContentView(dq(0));
        }
    }

    private View dq(int i) {
        LinearLayout linearLayout = new LinearLayout(this.ox);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.ox);
        LinearLayout.LayoutParams layoutParams2 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        LinearLayout linearLayout2 = new LinearLayout(this.ox);
        LinearLayout.LayoutParams layoutParams3 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.ox, 8.0f));
        linearLayout2.setBackground(gradientDrawable);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams3);
        linearLayout.addView(linearLayout2);
        RelativeLayout relativeLayout = new RelativeLayout(this.ox);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        return dq(i, linearLayout, linearLayout2, relativeLayout);
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, LinearLayout linearLayout2) {
        View view = new View(this.ox);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.ox, 1.0f)));
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view);
        this.f3712d = new SSWebView(this.ox);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        this.f3712d.setLayoutParams(layoutParams);
        linearLayout2.addView(this.f3712d);
        View view2 = new View(this.ox);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.ox, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view2);
        return d(i, linearLayout, linearLayout2);
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, int i2, int i3) {
        this.s = new Button(this.ox);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        layoutParams.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(ce.ox(this.ox, 3.0f));
        this.s.setBackground(gradientDrawable);
        this.s.setText("立即下载");
        this.s.setPadding(0, i3, 0, i3);
        this.s.setTextColor(-1);
        this.s.setLayoutParams(layoutParams);
        linearLayout3.addView(this.s);
        if (i == 0) {
            return linearLayout;
        }
        View view = new View(this.ox);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.ox, 34.0f)));
        linearLayout2.addView(view);
        return linearLayout;
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, LinearLayout linearLayout2, RelativeLayout relativeLayout) {
        ImageView imageView = new ImageView(this.ox);
        this.p = imageView;
        imageView.setMaxHeight(ce.ox(this.ox, 46.0f));
        this.p.setMaxWidth(ce.ox(this.ox, 46.0f));
        this.p.setMinimumHeight(ce.ox(this.ox, 46.0f));
        this.p.setMinimumWidth(ce.ox(this.ox, 46.0f));
        this.p.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.bytedance.sdk.openadsdk.res.ox oxVar = new com.bytedance.sdk.openadsdk.res.ox(ce.ox(this.ox, 14.0f));
        oxVar.dq(-16777216);
        oxVar.dq(ce.ox(this.ox, 2.0f));
        this.p.setImageDrawable(oxVar);
        relativeLayout.addView(this.p);
        TextView textView = new TextView(this.ox);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("隐私政策");
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        linearLayout2.addView(relativeLayout);
        return dq(i, linearLayout, linearLayout2);
    }

    private void ox() {
        if (TextUtils.isEmpty(this.kk)) {
            this.mn = "https://sf1-amtos-cdn.bytesmanager.com/obj/ad-app-package/personal-privacy-page.html";
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.r.s s = com.bytedance.sdk.openadsdk.core.d.s(new JSONObject(this.kk));
            if (s != null) {
                String ia = s.ia();
                this.mn = ia;
                if (TextUtils.isEmpty(ia)) {
                    this.mn = "https://sf1-amtos-cdn.bytesmanager.com/obj/ad-app-package/personal-privacy-page.html";
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public p dq(dq dqVar) {
        this.ia = dqVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dq() {
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.p.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.dq.set(0);
                if (p.this.ia != null) {
                    p.this.ia.d(p.this);
                }
            }
        });
        this.iw.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.p.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.dq.set(0);
                if (p.this.ia != null) {
                    p.this.ia.ox(p.this);
                }
            }
        });
        this.s.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.p.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.dq.set(0);
                if (p.this.ia != null) {
                    p.this.ia.dq(p.this);
                }
            }
        });
        this.f3712d.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.ox, null, 0 == true ? 1 : 0) { // from class: com.bytedance.sdk.openadsdk.core.widget.p.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, WebResourceRequest webResourceRequest) {
                this.ia = p.dq;
                return super.dq(webView, webResourceRequest);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, String str) {
                this.ia = p.dq;
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
        this.f3712d.setJavaScriptEnabled(true);
        this.f3712d.setDisplayZoomControls(false);
        this.f3712d.setCacheMode(2);
        this.f3712d.dq(this.mn);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        dq.set(0);
        dq dqVar = this.ia;
        if (dqVar != null) {
            dqVar.d(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
        ox();
        dq();
    }
}
