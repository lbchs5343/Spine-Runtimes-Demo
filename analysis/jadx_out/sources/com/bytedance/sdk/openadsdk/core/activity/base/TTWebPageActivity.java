package com.bytedance.sdk.openadsdk.core.activity.base;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.dislike.ui.dq;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.jy.p;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.ox.ia;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.o.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.op;
import com.bytedance.sdk.openadsdk.core.r.u;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.ig.ox;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import com.bytedance.sdk.openadsdk.res.layout.dq.d;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.abn;
import g.awf;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTWebPageActivity extends Activity implements e.dq, p {
    private static final String ox = "TTWebPageActivity";
    private j bl;
    private com.bytedance.sdk.openadsdk.core.q.d.dq by;
    private TTViewStub cd;
    private Activity ce;

    /* renamed from: d, reason: collision with root package name */
    com.bytedance.sdk.openadsdk.core.ig.p f2462d;
    com.bytedance.sdk.openadsdk.core.dislike.ui.dq dq;

    /* renamed from: e, reason: collision with root package name */
    private c f2463e;
    private ox er;

    /* renamed from: f, reason: collision with root package name */
    private TTViewStub f2464f;
    private TTViewStub fw;
    private TTViewStub gh;
    private boolean h;
    private TTProgressBar i;
    private TextView ia;
    private TextView ig;
    private com.bytedance.sdk.openadsdk.core.q.p ir;
    private ImageView iw;
    private String ji;
    private Context jy;
    private String k;
    private TextView kk;
    private int kx;
    private int l;
    private LinearLayout le;
    private TextView mn;
    private LinearLayout mp;
    private String n;
    private com.bytedance.sdk.openadsdk.core.widget.dq.p nh;
    private TextView no;
    private TextView o;
    private boolean ob;
    private com.bytedance.sdk.openadsdk.core.q.ox.ox op;
    private SSWebView p;
    private ImageView q;
    private Button r;
    private ImageView s;
    private int t;
    private boolean vf;
    private com.bytedance.sdk.openadsdk.core.o.d.ox wn;
    private String wp;
    private AtomicBoolean u = new AtomicBoolean(true);

    /* renamed from: c, reason: collision with root package name */
    private JSONArray f2461c = null;
    private final Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> j = awf.ab();
    private final e gx = new e(Looper.getMainLooper(), this);
    private String uh = "立即下载";
    private com.bytedance.sdk.openadsdk.core.o.d.dq xz = new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.12
        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void d(long j, long j2, String str, String str2) {
            TTWebPageActivity.this.dq("暂停");
            if (j > 0) {
                dq.C0166dq.dq(TTWebPageActivity.this.k, 2, (int) ((j2 * 100) / j));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq() {
            TTWebPageActivity tTWebPageActivity = TTWebPageActivity.this;
            tTWebPageActivity.dq(tTWebPageActivity.iw());
            dq.C0166dq.dq(TTWebPageActivity.this.k, 1, 0);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, long j2, String str, String str2) {
            TTWebPageActivity.this.dq("下载中...");
            String unused = TTWebPageActivity.ox;
            if (j > 0) {
                dq.C0166dq.dq(TTWebPageActivity.this.k, 3, (int) ((j2 * 100) / j));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, String str, String str2) {
            TTWebPageActivity.this.dq("点击安装");
            dq.C0166dq.dq(TTWebPageActivity.this.k, 5, 100);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(String str, String str2) {
            TTWebPageActivity.this.dq("点击打开");
            dq.C0166dq.dq(TTWebPageActivity.this.k, 6, 100);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void ox(long j, long j2, String str, String str2) {
            TTWebPageActivity.this.dq("下载失败");
            if (j > 0) {
                dq.C0166dq.dq(TTWebPageActivity.this.k, 4, (int) ((j2 * 100) / j));
            }
        }
    };

    public static class dq implements DownloadListener {

        /* renamed from: d, reason: collision with root package name */
        private j f2466d;
        private Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> dq;
        private Context ox;
        private String p;

        public dq(Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map, j jVar, Context context, String str) {
            this.dq = map;
            this.f2466d = jVar;
            this.ox = context;
            this.p = str;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map = this.dq;
            if (map == null || !map.containsKey(str)) {
                com.bytedance.sdk.openadsdk.core.o.d.ox dq = s.dq(this.ox, str, this.f2466d, this.p);
                dq.dq(jy.dq(this.f2466d));
                this.dq.put(str, dq);
                dq.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(this.f2466d), false);
                return;
            }
            com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.dq.get(str);
            if (oxVar != null) {
                oxVar.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(this.f2466d), false);
            }
        }
    }

    private JSONArray d(String str) {
        int i;
        JSONArray jSONArray = this.f2461c;
        if (jSONArray != null && jSONArray.length() > 0) {
            return this.f2461c;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("?id=");
        int indexOf2 = str.indexOf("&");
        if (indexOf == -1 || indexOf2 == -1 || (i = indexOf + 4) >= indexOf2) {
            return null;
        }
        String substring = str.substring(i, indexOf2);
        if (TextUtils.isEmpty(substring)) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(substring);
        return jSONArray2;
    }

    private void d(int i) {
        if (i <= 0) {
            if (this.vf) {
                ce.dq(this.mn, "领取成功");
                return;
            } else {
                if (this.ob) {
                    ce.dq((View) this.q, 8);
                    ce.dq(this.mn, "恭喜你！福利已领取");
                    return;
                }
                return;
            }
        }
        if (this.vf) {
            ce.dq(this.mn, i + "s后可领取奖励");
            return;
        }
        if (this.ob) {
            SpannableString spannableString = new SpannableString(awf.b(i, "浏览 ", "秒 获得更多福利"));
            spannableString.setSpan(new ForegroundColorSpan(-65536), spannableString.length() - 4, spannableString.length(), 17);
            ce.dq(this.mn, spannableString);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(j jVar) {
        if (jVar == null) {
            return;
        }
        String ip = jVar.ip();
        q();
        iw.dq(this.jy, jVar.fx(), new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.11
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
                TTWebPageActivity.this.jy();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                TTWebPageActivity.this.jy();
                TTWebPageActivity.this.p();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                TTWebPageActivity.this.jy();
            }
        }, ip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i) {
        if (j.ox(this.bl)) {
            ce.dq((View) this.iw, 4);
        } else if (j.ox(this.bl)) {
            ce.dq((View) this.iw, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(j jVar) {
        if (jVar == null) {
            return;
        }
        String ip = jVar.ip();
        q();
        iw.dq(this.jy, jVar.fx(), ip, new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.10
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
                TTWebPageActivity.this.jy();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                TTWebPageActivity.this.jy();
                TTWebPageActivity.this.p();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                TTWebPageActivity.this.jy();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.r) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.13
            @Override // java.lang.Runnable
            public void run() {
                if (TTWebPageActivity.this.r == null || TTWebPageActivity.this.isFinishing()) {
                    return;
                }
                TTWebPageActivity.this.r.setText(str);
            }
        });
    }

    private void f() {
        String dq2 = u.dq(this.bl);
        if (u.d(this.bl)) {
            this.op = com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().dq(dq2, u.p(this.bl));
        }
        com.bytedance.sdk.openadsdk.core.q.ox.ox oxVar = this.op;
        if (oxVar != null) {
            oxVar.dq(false, this.bl);
        }
        this.ir = new com.bytedance.sdk.openadsdk.core.q.p(dq2);
    }

    private void fw() {
        com.bytedance.sdk.openadsdk.core.q.ox.ox oxVar = this.op;
        if (oxVar != null) {
            oxVar.ox();
            this.op = null;
        }
        com.bytedance.sdk.openadsdk.core.q.p pVar = this.ir;
        if (pVar != null) {
            pVar.dq();
            this.ir = null;
        }
    }

    private void ia() {
        TTViewStub tTViewStub;
        if (this.vf || this.ob) {
            TTViewStub tTViewStub2 = this.cd;
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
            this.q = (ImageView) findViewById(2114387848);
        } else {
            j jVar = this.bl;
            if (jVar == null || !jVar.p()) {
                int r = no.ia().r();
                if (r == 0) {
                    TTViewStub tTViewStub3 = this.f2464f;
                    if (tTViewStub3 != null) {
                        tTViewStub3.setVisibility(0);
                    }
                } else if (r == 1 && (tTViewStub = this.fw) != null) {
                    tTViewStub.setVisibility(0);
                }
            } else {
                TTViewStub tTViewStub4 = this.f2464f;
                if (tTViewStub4 != null) {
                    tTViewStub4.setVisibility(8);
                }
                TTViewStub tTViewStub5 = this.fw;
                if (tTViewStub5 != null) {
                    tTViewStub5.setVisibility(8);
                }
            }
        }
        ImageView imageView = (ImageView) findViewById(2114387708);
        this.s = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ce.dq(TTWebPageActivity.this.p)) {
                        return;
                    }
                    TTWebPageActivity.this.onBackPressed();
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387707);
        this.iw = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebPageActivity.this.finish();
                }
            });
        }
        this.mn = (TextView) findViewById(2114387952);
        this.ia = (TextView) findViewById(2114387630);
        this.kk = (TextView) findViewById(2114387613);
        this.o = (TextView) findViewById(2114387704);
        this.no = (TextView) findViewById(2114387601);
        this.ig = (TextView) findViewById(2114387703);
        this.mp = (LinearLayout) findViewById(2114387679);
        TextView textView = this.ia;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebPageActivity.this.dq();
                }
            });
        }
    }

    private void ig() {
        this.l = 0;
        if (this.vf) {
            this.l = com.bytedance.sdk.openadsdk.core.mn.p.dq;
        } else if (this.ob && !com.bytedance.sdk.openadsdk.core.mn.p.p) {
            this.l = uh.q(this.bl);
        }
        d(this.l);
        if (this.l > 0 && !this.gx.hasMessages(10)) {
            if (this.vf) {
                this.gx.sendEmptyMessageDelayed(10, 1000L);
            } else if (this.ob) {
                this.gx.sendEmptyMessageDelayed(10, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String iw() {
        j jVar = this.bl;
        if (jVar != null && !TextUtils.isEmpty(jVar.tu())) {
            this.uh = this.bl.tu();
        }
        return this.uh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jy() {
        if (!mp() || this.gx.hasMessages(10)) {
            return;
        }
        this.gx.sendEmptyMessageDelayed(10, 1000L);
    }

    private void kk() {
        if (this.p == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.bl);
        c cVar = new c(this.ce);
        this.f2463e = cVar;
        cVar.p(this.h);
        this.f2463e.d(this.p).dq(this.bl).ox(arrayList).d(this.k).ox(this.wp).ox(this.kx).dq(this.ji).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.bl)).dq(this.p).dq(true).d(jy.dq(this.bl)).dq(this);
    }

    private View mn() {
        Activity activity = this.ce;
        if (activity == null) {
            return null;
        }
        Resources resources = activity.getResources();
        this.le = new LinearLayout(this.ce);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.le.setOrientation(1);
        this.le.setLayoutParams(layoutParams);
        TTViewStub tTViewStub = new TTViewStub(this.jy, new d());
        this.f2464f = tTViewStub;
        tTViewStub.setId(2114387775);
        this.le.addView(this.f2464f, new LinearLayout.LayoutParams(-1, -2));
        TTViewStub tTViewStub2 = new TTViewStub(this.jy, new com.bytedance.sdk.openadsdk.res.layout.dq.ox());
        this.fw = tTViewStub2;
        tTViewStub2.setId(2114387797);
        this.le.addView(this.fw, new LinearLayout.LayoutParams(-1, -2));
        TTViewStub tTViewStub3 = new TTViewStub(this.jy, new com.bytedance.sdk.openadsdk.res.layout.dq.p());
        this.cd = tTViewStub3;
        tTViewStub3.setId(2114387939);
        this.le.addView(this.cd, new LinearLayout.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(this.ce);
        this.le.addView(frameLayout, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        SSWebView sSWebView = new SSWebView(this.ce);
        this.p = sSWebView;
        sSWebView.setId(2114387738);
        this.p.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(this.p);
        TTViewStub tTViewStub4 = new TTViewStub(this.jy, new com.bytedance.sdk.openadsdk.res.layout.dq.dq());
        this.gh = tTViewStub4;
        tTViewStub4.setId(2114387956);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 48.0f, resources.getDisplayMetrics()));
        layoutParams2.gravity = 81;
        frameLayout.addView(this.gh, layoutParams2);
        TTProgressBar tTProgressBar = new TTProgressBar(this.ce, null, R.style.Widget.ProgressBar.Horizontal);
        this.i = tTProgressBar;
        tTProgressBar.setId(2114387928);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 3.0f, resources.getDisplayMetrics()));
        layoutParams3.gravity = 49;
        this.i.setLayoutParams(layoutParams3);
        this.i.setProgress(1);
        this.i.setProgressDrawable(r.ox(this.ce, "tt_browser_progress_style"));
        frameLayout.addView(this.i);
        return this.le;
    }

    private boolean mp() {
        return this.vf || this.ob;
    }

    private void no() {
        this.ob = uh.gh(this.bl);
        boolean z = uh.cd(this.bl) && !com.bytedance.sdk.openadsdk.core.mn.p.ox;
        this.vf = z;
        if (this.ob) {
            if (!com.bytedance.sdk.openadsdk.core.mn.p.p) {
                this.vf = false;
            } else if (z) {
                this.ob = false;
            }
        }
    }

    private void o() {
        if (this.bl == null) {
            return;
        }
        JSONArray d2 = d(this.n);
        int kk = com.bytedance.sdk.openadsdk.core.ir.c.kk(this.bl);
        int ia = com.bytedance.sdk.openadsdk.core.ir.c.ia(this.bl);
        h<com.bytedance.sdk.openadsdk.core.ig.dq> dq2 = wp.dq();
        if (d2 == null || dq2 == null || kk <= 0 || ia <= 0) {
            return;
        }
        nh nhVar = new nh();
        nhVar.iw = d2;
        com.bytedance.sdk.openadsdk.f.d.ox.d ds = this.bl.ds();
        if (ds == null) {
            return;
        }
        dq2.dq(com.bytedance.sdk.openadsdk.core.ir.h.d(ds).ox(6).dq(), nhVar, ia, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.5
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar) {
                TTWebPageActivity.this.dq(0);
                dVar.dq(i);
                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar) {
                if (dqVar != null) {
                    try {
                        TTWebPageActivity.this.u.set(false);
                        TTWebPageActivity.this.f2463e.dq(dqVar.ox());
                    } catch (Exception unused) {
                        TTWebPageActivity.this.dq(0);
                    }
                }
            }
        });
    }

    private void ox(j jVar) {
        LinearLayout linearLayout = this.mp;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
            return;
        }
        if (this.bl == null) {
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
                return;
            }
            return;
        }
        String ip = jVar.ip();
        if (TextUtils.isEmpty(ip)) {
            LinearLayout linearLayout2 = this.mp;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
                return;
            }
            return;
        }
        try {
            if (TextUtils.isEmpty(ip)) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.r.s s = com.bytedance.sdk.openadsdk.core.d.s(new JSONObject(ip));
            if (s == null) {
                LinearLayout linearLayout3 = this.mp;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(8);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(s.ig())) {
                LinearLayout linearLayout4 = this.mp;
                if (linearLayout4 != null) {
                    linearLayout4.setVisibility(8);
                    return;
                }
                return;
            }
            LinearLayout linearLayout5 = this.mp;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(0);
            }
            String s2 = s.s();
            String mn = s.mn();
            String mp = s.mp();
            if (TextUtils.isEmpty(mp)) {
                mp = jy.d(jVar);
            }
            if (this.kk != null) {
                this.kk.setText(String.format(r.dq(this.jy, "tt_open_app_detail_developer"), mn));
            }
            if (this.o != null) {
                this.o.setText(String.format(r.dq(this.jy, "tt_open_landing_page_app_name"), mp, s2));
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void p() {
        int cd = com.bytedance.sdk.openadsdk.core.r.r.cd(this.bl);
        j jVar = this.bl;
        if (jVar != null) {
            if (jVar.y() == 4 || cd != 0) {
                if (this.wn == null) {
                    com.bytedance.sdk.openadsdk.core.o.d.ox dq2 = s.dq((Context) this.ce, this.bl, TextUtils.isEmpty(this.ji) ? com.bytedance.sdk.openadsdk.core.ir.c.dq(this.kx) : this.ji, false);
                    this.wn = dq2;
                    dq2.dq(jy.dq(this.bl));
                    this.wn.dq(this.xz, false);
                }
                this.wn.dq(this.ce);
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.wn;
                if (oxVar instanceof ia) {
                    ((ia) oxVar).ox(true);
                    ((ia) this.wn).no().dq(false);
                }
                com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.ce, this.bl, "embeded_ad_landingpage", this.kx);
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
                this.wn.dq(this.bl, false);
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.wn);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (mp()) {
            this.gx.removeMessages(10);
        }
    }

    private void s() {
        j jVar = this.bl;
        if (jVar == null || jVar.y() != 4) {
            return;
        }
        TTViewStub tTViewStub = this.gh;
        if (tTViewStub != null) {
            tTViewStub.setVisibility(0);
        }
        Button button = (Button) findViewById(2114387734);
        this.r = button;
        if (button != null) {
            dq(iw());
            if (this.wn == null) {
                com.bytedance.sdk.openadsdk.core.o.d.ox dq2 = s.dq((Context) this.ce, this.bl, TextUtils.isEmpty(this.ji) ? com.bytedance.sdk.openadsdk.core.ir.c.dq(this.kx) : this.ji, false);
                this.wn = dq2;
                dq2.dq(jy.dq(this.bl));
                this.wn.dq(this.xz, false);
            }
            this.wn.dq(this.ce);
            com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.wn;
            if (oxVar instanceof ia) {
                ((ia) oxVar).ox(true);
            }
            com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.ce, this.bl, "embeded_ad_landingpage", this.kx);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
            this.r.setOnClickListener(dqVar);
            this.r.setOnTouchListener(dqVar);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.wn);
        }
    }

    public void d() {
        try {
            com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(this.ce, this.bl.ez(), this.ji, true);
            this.dq = dqVar;
            com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.ce, dqVar, this.bl);
            this.dq.dq(new dq.InterfaceC0156dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.6
                @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                public void d() {
                    TTWebPageActivity.this.jy();
                }

                @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                public void dq() {
                    TTWebPageActivity.this.q();
                }

                @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                public void dq(int i, String str, boolean z) {
                    TTWebPageActivity.this.jy();
                }
            });
        } catch (Exception e2) {
            ig.d(e2.getMessage());
        }
    }

    public void dq() {
        if (this.bl == null || isFinishing()) {
            return;
        }
        if (this.dq == null) {
            d();
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what == 10 && mp()) {
            int i = this.t + 1;
            this.t = i;
            if (this.vf) {
                com.bytedance.sdk.openadsdk.core.mn.p.f3170d = i;
            }
            int max = Math.max(0, this.l - i);
            d(max);
            if (max <= 0 && this.ob) {
                com.bytedance.sdk.openadsdk.core.mn.p.p = true;
            }
            this.gx.sendEmptyMessageDelayed(10, 1000L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.p
    public void dq(boolean z, JSONArray jSONArray) {
        if (!z || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.f2461c = jSONArray;
        o();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            if ((j.ox(this.bl) || op.dq(this.bl)) && ce.dq(this.p)) {
                return;
            }
            super.onBackPressed();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        s();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.ce = this;
        this.jy = this;
        try {
            wp.dq(this);
        } catch (Throwable unused) {
        }
        long currentTimeMillis = System.currentTimeMillis();
        setContentView(mn());
        Intent intent = getIntent();
        this.bl = com.bytedance.sdk.openadsdk.core.ir.c.dq(intent);
        com.bytedance.sdk.openadsdk.core.playable.p.dq().dq(this.bl);
        f();
        no();
        ia();
        if (this.p != null) {
            com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.jy).dq(false).d(false).dq(this.p);
        }
        this.k = intent.getStringExtra(MediationConstant.EXTRA_ADID);
        this.wp = intent.getStringExtra("log_extra");
        this.kx = intent.getIntExtra(abn.EXTRA_SOURCE, -1);
        this.h = intent.getBooleanExtra("is_outer_click", false);
        String stringExtra = intent.getStringExtra(abn.EXTRA_URL);
        this.n = stringExtra;
        this.n = com.bytedance.sdk.openadsdk.core.ir.c.d(this.bl, stringExtra);
        String stringExtra2 = intent.getStringExtra(abn.EXTRA_TITLE);
        this.ji = intent.getStringExtra("event_tag");
        j jVar = this.bl;
        if (jVar != null && jVar.ez() != null) {
            this.bl.ez().dq("landing_page");
        }
        ox(this.bl);
        SSWebView sSWebView = this.p;
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.ig.p p = new com.bytedance.sdk.openadsdk.core.ig.p(this.bl, sSWebView).d(true).d(currentTimeMillis).p(this.p.getWebViewCreateDuration());
            this.f2462d = p;
            com.bytedance.sdk.openadsdk.core.q.p pVar = this.ir;
            p.dq(pVar == null ? null : pVar.dq);
            j jVar2 = this.bl;
            if (jVar2 != null && jVar2.ha() == 1 && wp.d().er() == 1 && ((q.p(this.jy) || wp.d().l() != 1) && ox.dq())) {
                this.er = ox.dq(this.bl, stringExtra);
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adid", this.k);
            jSONObject.put(abn.EXTRA_URL, stringExtra);
            jSONObject.put("web_title", stringExtra2);
            jSONObject.put("is_multi_process", com.bytedance.sdk.openadsdk.core.multipro.d.ox());
            jSONObject.put("event_tag", this.ji);
        } catch (JSONException unused2) {
        }
        this.f2462d.dq(jSONObject);
        kk();
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar2 = new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.jy, this.f2463e, this.k, this.f2462d, this.er) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTWebPageActivity.this.i == null || TTWebPageActivity.this.isFinishing()) {
                        return;
                    }
                    TTWebPageActivity.this.i.setVisibility(8);
                } catch (Throwable unused3) {
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:4:0x0025, code lost:
            
                return r0;
             */
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                WebResourceResponse webResourceResponse = null;
                if (webResourceRequest != null) {
                    try {
                        if (com.bytedance.sdk.openadsdk.core.q.p.dq(webResourceRequest.getMethod()) && TTWebPageActivity.this.ir != null) {
                            webResourceResponse = TTWebPageActivity.this.ir.dq(webResourceRequest);
                        }
                    } catch (Throwable th) {
                        Log.e(TTWebPageActivity.ox, "shouldInterceptRequest url error", th);
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                }
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        };
        this.nh = pVar2;
        this.p.setWebViewClient(pVar2);
        SSWebView sSWebView2 = this.p;
        if (sSWebView2 != null) {
            com.bytedance.sdk.openadsdk.core.ir.r.dq(sSWebView2, com.bytedance.sdk.openadsdk.core.op.f3334d, j.p(this.bl));
        }
        this.p.setMixedContentMode(0);
        this.p.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.f2463e, this.f2462d) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.7
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.ox, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTWebPageActivity.this.i == null || TTWebPageActivity.this.isFinishing()) {
                    return;
                }
                if (i == 100 && TTWebPageActivity.this.i.isShown()) {
                    TTWebPageActivity.this.i.setVisibility(8);
                } else {
                    TTWebPageActivity.this.i.setProgress(i);
                }
            }
        });
        this.p.setDownloadListener(new dq(this.j, this.bl, this.jy, this.ji));
        TextView textView = this.mn;
        if (textView != null && !this.vf && !this.ob) {
            if (TextUtils.isEmpty(stringExtra2)) {
                stringExtra2 = r.dq(this.ce, "tt_web_title_default");
            }
            textView.setText(stringExtra2);
        }
        TextView textView2 = this.no;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebPageActivity tTWebPageActivity = TTWebPageActivity.this;
                    tTWebPageActivity.dq(tTWebPageActivity.bl);
                }
            });
        }
        TextView textView3 = this.ig;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebPageActivity tTWebPageActivity = TTWebPageActivity.this;
                    tTWebPageActivity.d(tTWebPageActivity.bl);
                }
            });
        }
        s();
        dq(4);
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.bl, getClass().getName());
        this.p.setVisibility(0);
        this.f2462d.ox(System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.core.q.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.q.d.dq(this.p, this.n, this.bl);
        this.by = dqVar;
        dqVar.dq();
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.bl);
        if (this.vf || this.ob) {
            ig();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.f2462d;
        if (pVar != null) {
            pVar.iw();
        }
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable unused) {
        }
        fw();
        SSWebView sSWebView = this.p;
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.j.dq(this.jy, sSWebView);
            com.bytedance.sdk.openadsdk.core.j.dq(this.p);
        }
        this.p = null;
        ox oxVar = this.er;
        if (oxVar != null) {
            oxVar.d();
        }
        c cVar = this.f2463e;
        if (cVar != null) {
            cVar.u();
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar2 = this.wn;
        if (oxVar2 != null) {
            oxVar2.kk();
        }
        Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map = this.j;
        if (map != null) {
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().kk();
                }
            }
            this.j.clear();
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar2 = this.f2462d;
        if (pVar2 != null) {
            pVar2.s();
        }
        com.bytedance.sdk.openadsdk.core.playable.p.dq().d(this.bl);
        com.bytedance.sdk.openadsdk.core.q.d.dq dqVar = this.by;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        c cVar = this.f2463e;
        if (cVar != null) {
            cVar.ir();
        }
        Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map = this.j;
        if (map != null) {
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue();
                }
            }
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = this.nh;
        if (pVar != null) {
            pVar.ox();
        }
        q();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        c cVar = this.f2463e;
        if (cVar != null) {
            cVar.op();
            this.f2463e.dq(new SSWebView.d() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.4
                @Override // com.bytedance.sdk.component.widget.SSWebView.d
                public void dq(int i) {
                    TTWebPageActivity.this.f2463e.dq(i);
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.wn;
        if (oxVar != null) {
            oxVar.ia();
        }
        Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map = this.j;
        if (map != null) {
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().ia();
                }
            }
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.f2462d;
        if (pVar != null) {
            pVar.ox();
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar2 = this.nh;
        if (pVar2 != null) {
            pVar2.d(true);
        }
        o();
        jy();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.f2462d;
        if (pVar != null) {
            pVar.p();
        }
    }
}
