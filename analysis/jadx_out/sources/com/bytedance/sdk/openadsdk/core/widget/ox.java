package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@SuppressLint({"SetJavaScriptEnabled"})
/* loaded from: classes3.dex */
public class ox extends AlertDialog {

    /* renamed from: d, reason: collision with root package name */
    protected static volatile AtomicInteger f3709d = new AtomicInteger(0);
    protected Context dq;
    private String ia;
    private List<C0198ox> ig;
    private ListView iw;
    private dq kk;
    private SSWebView mn;
    private boolean mp;
    private HashMap<String, String> no;
    private String o;
    private Button ox;
    private Button p;
    private ImageView s;

    public class d extends ArrayAdapter<C0198ox> {

        public class dq {

            /* renamed from: d, reason: collision with root package name */
            private TextView f3710d;
            private TextView ox;
            private ImageView p;

            public dq() {
            }
        }

        public d(Context context, int i, List<C0198ox> list) {
            super(context, i, list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            dq dqVar;
            View view2;
            C0198ox c0198ox = (C0198ox) getItem(i);
            if (view == null) {
                RelativeLayout relativeLayout = new RelativeLayout(ox.this.dq);
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                relativeLayout.setPadding(0, 0, 0, ce.ox(ox.this.dq, 17.0f));
                TextView textView = new TextView(ox.this.dq);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                int ox = ce.ox(ox.this.dq, 16.0f);
                layoutParams.leftMargin = ox;
                layoutParams.rightMargin = ox;
                textView.setGravity(16);
                textView.setId(View.generateViewId());
                textView.setTextColor(Color.parseColor("#161823"));
                textView.setTextSize(16.0f);
                textView.setTypeface(null, 1);
                textView.setPadding(0, ce.ox(ox.this.dq, 19.0f), 0, 0);
                textView.setLayoutParams(layoutParams);
                relativeLayout.addView(textView);
                ImageView imageView = new ImageView(ox.this.dq);
                imageView.setId(View.generateViewId());
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ox, ox);
                layoutParams2.topMargin = ce.ox(ox.this.dq, 7.0f);
                layoutParams2.addRule(3, textView.getId());
                layoutParams2.addRule(5, textView.getId());
                imageView.setBackground(r.ox(ox.this.dq, "tt_open_app_detail_list_item"));
                imageView.setLayoutParams(layoutParams2);
                relativeLayout.addView(imageView);
                TextView textView2 = new TextView(ox.this.dq);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.leftMargin = ce.ox(ox.this.dq, 8.0f);
                layoutParams3.topMargin = ce.ox(ox.this.dq, 6.0f);
                layoutParams3.addRule(3, textView.getId());
                layoutParams3.addRule(1, imageView.getId());
                textView2.setLayoutParams(layoutParams3);
                textView2.setTextColor(Color.parseColor("#161823"));
                textView2.setTextSize(13.0f);
                textView2.setAlpha(0.5f);
                textView2.setGravity(16);
                relativeLayout.addView(textView2);
                dqVar = new dq();
                dqVar.f3710d = textView;
                dqVar.ox = textView2;
                dqVar.p = imageView;
                relativeLayout.setTag(dqVar);
                view2 = relativeLayout;
            } else {
                dqVar = (dq) view.getTag();
                view2 = view;
            }
            dqVar.p.setVisibility(0);
            if ("补充中，可于应用官网查看".equals(c0198ox.dq())) {
                dqVar.p.setVisibility(4);
            }
            dqVar.f3710d.setText(c0198ox.dq());
            dqVar.ox.setText(c0198ox.d());
            return view2;
        }
    }

    public interface dq {
        void d(Dialog dialog);

        void dq(Dialog dialog);

        void ox(Dialog dialog);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.ox$ox, reason: collision with other inner class name */
    public class C0198ox {

        /* renamed from: d, reason: collision with root package name */
        private String f3711d;
        private String ox;

        public C0198ox(String str, String str2) {
            this.f3711d = str;
            this.ox = str2;
        }

        public String d() {
            return this.ox;
        }

        public String dq() {
            return this.f3711d;
        }
    }

    public ox(Context context, String str) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.ig = new ArrayList();
        this.mp = false;
        this.dq = context;
        this.o = str;
    }

    private View d(int i) {
        LinearLayout linearLayout = new LinearLayout(this.dq);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.dq);
        LinearLayout.LayoutParams layoutParams2 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        RelativeLayout relativeLayout = new RelativeLayout(this.dq);
        LinearLayout.LayoutParams layoutParams3 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 8.0f));
        relativeLayout.setBackground(gradientDrawable);
        relativeLayout.setLayoutParams(layoutParams3);
        linearLayout.addView(relativeLayout);
        return dq(i, linearLayout, relativeLayout);
    }

    private LinearLayout d(int i, LinearLayout linearLayout, LinearLayout linearLayout2) {
        if (i == 0) {
            return linearLayout;
        }
        View view = new View(this.dq);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.dq, 34.0f)));
        linearLayout2.addView(view);
        return linearLayout;
    }

    private LinearLayout d(int i, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        View view = new View(this.dq);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.dq, 1.0f)));
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        relativeLayout.addView(view);
        this.mn = new SSWebView(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        this.mn.setLayoutParams(layoutParams);
        relativeLayout.addView(this.mn);
        View view2 = new View(this.dq);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.dq, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        relativeLayout.addView(view2);
        return ox(i, linearLayout, relativeLayout);
    }

    private View dq(int i) {
        LinearLayout linearLayout = new LinearLayout(this.dq);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.dq);
        LinearLayout.LayoutParams layoutParams2 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        LinearLayout linearLayout2 = new LinearLayout(this.dq);
        LinearLayout.LayoutParams layoutParams3 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 8.0f));
        linearLayout2.setBackground(gradientDrawable);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams3);
        linearLayout.addView(linearLayout2);
        RelativeLayout relativeLayout = new RelativeLayout(this.dq);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        return dq(i, linearLayout, linearLayout2, relativeLayout);
    }

    private LinearLayout dq(int i, int i2, LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.ox = new Button(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
        layoutParams.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 3.0f));
        this.ox.setBackground(gradientDrawable);
        this.ox.setText("立即下载");
        this.ox.setPadding(0, i2, 0, i2);
        this.ox.setTextColor(-1);
        this.ox.setLayoutParams(layoutParams);
        linearLayout.addView(this.ox);
        return linearLayout2;
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, LinearLayout linearLayout2) {
        LinearLayout linearLayout3 = new LinearLayout(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout3.setOrientation(0);
        int ox = ce.ox(this.dq, 16.0f);
        linearLayout3.setPadding(ox, ox, ox, ox);
        linearLayout3.setLayoutParams(layoutParams);
        linearLayout2.addView(linearLayout3);
        this.p = new Button(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        int ox2 = ce.ox(this.dq, 7.0f);
        layoutParams2.leftMargin = ox2;
        layoutParams2.rightMargin = ox2;
        layoutParams2.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 3.0f));
        gradientDrawable.setStroke(ce.ox(this.dq, 0.5f), Color.parseColor("#E0161823"));
        this.p.setBackground(gradientDrawable);
        int ox3 = ce.ox(this.dq, 12.0f);
        this.p.setText("上一步");
        this.p.setPadding(0, ox3, 0, ox3);
        this.p.setTextColor(Color.parseColor("#A8161823"));
        this.p.setLayoutParams(layoutParams2);
        linearLayout3.addView(this.p);
        return dq(ox2, ox3, linearLayout3, d(i, linearLayout, linearLayout2));
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, LinearLayout linearLayout2, RelativeLayout relativeLayout) {
        ImageView imageView = new ImageView(this.dq);
        this.s = imageView;
        imageView.setMaxHeight(ce.ox(this.dq, 46.0f));
        this.s.setMaxWidth(ce.ox(this.dq, 46.0f));
        this.s.setMinimumHeight(ce.ox(this.dq, 46.0f));
        this.s.setMinimumWidth(ce.ox(this.dq, 46.0f));
        this.s.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.bytedance.sdk.openadsdk.res.ox oxVar = new com.bytedance.sdk.openadsdk.res.ox(ce.ox(this.dq, 14.0f));
        oxVar.dq(-16777216);
        oxVar.dq(ce.ox(this.dq, 2.0f));
        this.s.setImageDrawable(oxVar);
        relativeLayout.addView(this.s);
        TextView textView = new TextView(this.dq);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("权限列表");
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        linearLayout2.addView(relativeLayout);
        View view = new View(this.dq);
        view.setId(View.generateViewId());
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, ce.ox(this.dq, 1.0f)));
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view);
        return dq(i, linearLayout, dq(linearLayout2, view));
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        RelativeLayout relativeLayout2 = new RelativeLayout(this.dq);
        relativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(this.dq);
        this.s = imageView;
        imageView.setMaxHeight(ce.ox(this.dq, 46.0f));
        this.s.setMaxWidth(ce.ox(this.dq, 46.0f));
        this.s.setMinimumHeight(ce.ox(this.dq, 46.0f));
        this.s.setMinimumWidth(ce.ox(this.dq, 46.0f));
        this.s.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.bytedance.sdk.openadsdk.res.ox oxVar = new com.bytedance.sdk.openadsdk.res.ox(ce.ox(this.dq, 14.0f));
        oxVar.dq(-16777216);
        oxVar.dq(ce.ox(this.dq, 2.0f));
        this.s.setImageDrawable(oxVar);
        relativeLayout2.addView(this.s);
        TextView textView = new TextView(this.dq);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("权限列表");
        textView.setLayoutParams(layoutParams);
        relativeLayout2.addView(textView);
        relativeLayout.addView(relativeLayout2);
        return d(i, linearLayout, relativeLayout);
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, RelativeLayout relativeLayout, LinearLayout linearLayout2, int i2, int i3) {
        return dq(i2, i3, linearLayout2, p(i, linearLayout, relativeLayout));
    }

    private LinearLayout dq(LinearLayout linearLayout, View view) {
        LinearLayout linearLayout2 = new LinearLayout(this.dq);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, view.getId());
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2);
        this.iw = new ListView(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        layoutParams2.topMargin = ce.ox(this.dq, 20.0f);
        int ox = ce.ox(this.dq, 16.0f);
        this.iw.setPadding(ox, 0, ox, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setShape(2);
        gradientDrawable.setStroke(ce.ox(this.dq, 1.0f), Color.parseColor("#F0F0F0"));
        this.iw.setDivider(gradientDrawable);
        this.iw.setDividerHeight(ce.ox(this.dq, 24.0f));
        this.iw.setSelector(new ColorDrawable(0));
        this.iw.setLayoutParams(layoutParams2);
        linearLayout2.addView(this.iw);
        View view2 = new View(this.dq);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.dq, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view2);
        return linearLayout2;
    }

    private void dq(HashMap<String, String> hashMap) {
        List<C0198ox> list = this.ig;
        if (list != null && list.size() > 0) {
            this.ig.clear();
        }
        if (this.ig == null) {
            this.ig = new ArrayList();
        }
        if (hashMap == null || hashMap.size() <= 0) {
            this.ig.add(new C0198ox("补充中，可于应用官网查看", ""));
            return;
        }
        for (String str : hashMap.keySet()) {
            this.ig.add(new C0198ox(str, hashMap.get(str)));
        }
    }

    private LinearLayout ox(int i, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        LinearLayout linearLayout2 = new LinearLayout(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout2.setOrientation(0);
        int ox = ce.ox(this.dq, 16.0f);
        linearLayout2.setPadding(ox, ox, ox, ox);
        linearLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(linearLayout2);
        this.p = new Button(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        int ox2 = ce.ox(this.dq, 7.0f);
        layoutParams2.leftMargin = ox2;
        layoutParams2.rightMargin = ox2;
        layoutParams2.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 3.0f));
        gradientDrawable.setStroke(ce.ox(this.dq, 0.5f), Color.parseColor("#E0161823"));
        this.p.setBackground(gradientDrawable);
        int ox3 = ce.ox(this.dq, 12.0f);
        this.p.setText("上一步");
        this.p.setPadding(0, ox3, 0, ox3);
        this.p.setTextColor(Color.parseColor("#A8161823"));
        this.p.setLayoutParams(layoutParams2);
        linearLayout2.addView(this.p);
        return dq(i, linearLayout, relativeLayout, linearLayout2, ox2, ox3);
    }

    private LinearLayout p(int i, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        if (i == 0) {
            return linearLayout;
        }
        View view = new View(this.dq);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, ce.ox(this.dq, 34.0f)));
        relativeLayout.addView(view);
        return linearLayout;
    }

    private void p() {
        if (this.dq == null) {
            this.dq = wp.getContext();
        }
        if (this.dq.getResources().getConfiguration().orientation == 1) {
            setContentView(dq(1));
        } else {
            setContentView(dq(0));
        }
    }

    private void s() {
        if (this.dq == null) {
            this.dq = wp.getContext();
        }
        if (this.dq.getResources().getConfiguration().orientation == 1) {
            setContentView(d(1));
        } else {
            setContentView(d(0));
        }
    }

    public void d() {
        if (TextUtils.isEmpty(this.o)) {
            dq(this.no);
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.r.s s = com.bytedance.sdk.openadsdk.core.d.s(new JSONObject(this.o));
            if (s != null) {
                HashMap<String, String> dq2 = s.dq();
                this.no = dq2;
                if (!dq2.isEmpty()) {
                    this.mp = false;
                    dq(this.no);
                } else if (TextUtils.isEmpty(s.d())) {
                    dq(this.no);
                } else {
                    this.ia = s.d();
                    this.mp = true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public ox dq(dq dqVar) {
        this.kk = dqVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dq() {
        this.mn.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.dq, null, 0 == true ? 1 : 0) { // from class: com.bytedance.sdk.openadsdk.core.widget.ox.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, WebResourceRequest webResourceRequest) {
                this.ia = ox.f3709d;
                return super.dq(webView, webResourceRequest);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p
            public boolean dq(WebView webView, String str) {
                this.ia = ox.f3709d;
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
        this.mn.setJavaScriptEnabled(true);
        this.mn.setDisplayZoomControls(false);
        this.mn.setCacheMode(2);
        this.mn.dq(this.ia);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        f3709d.set(0);
        dq dqVar = this.kk;
        if (dqVar != null) {
            dqVar.d(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
        if (this.mp) {
            s();
        } else {
            p();
        }
        ox();
    }

    public void ox() {
        if (this.mp) {
            dq();
        } else {
            SSWebView sSWebView = this.mn;
            if (sSWebView != null) {
                sSWebView.setWebViewClient(new SSWebView.dq());
            }
        }
        this.ox.setVisibility(0);
        this.ox.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ox.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ox.f3709d.set(0);
                if (ox.this.kk != null) {
                    ox.this.kk.dq(ox.this);
                }
            }
        });
        this.s.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ox.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ox.f3709d.set(0);
                if (ox.this.kk != null) {
                    ox.this.kk.d(ox.this);
                }
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ox.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ox.f3709d.set(0);
                if (ox.this.kk != null) {
                    ox.this.kk.ox(ox.this);
                }
            }
        });
        List<C0198ox> list = this.ig;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.iw.setAdapter((ListAdapter) new d(this.dq, 0, this.ig));
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
