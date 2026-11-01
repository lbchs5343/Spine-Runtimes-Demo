package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.r;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class ia implements com.bytedance.sdk.component.no.dq.dq.ox {

    @com.bytedance.sdk.component.no.d.dq(dq = "action_type")
    private int bl;

    /* renamed from: c, reason: collision with root package name */
    private double f2928c;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j cd;
    private String ce;

    @com.bytedance.sdk.component.no.d.dq(dq = TTDownloadField.TT_ACTIVITY)
    protected TTBaseVideoActivity dq;

    /* renamed from: e, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "end_card_param")
    private com.bytedance.sdk.openadsdk.core.ia.dq.ox.dq f2930e;
    private boolean er;

    @com.bytedance.sdk.component.no.d.dq(dq = "web_view")
    private WeakReference<SSWebView> fw;

    @com.bytedance.sdk.component.no.d.dq(dq = "event_tag")
    private String gh;

    @com.bytedance.sdk.component.no.d.dq(dq = "end_card_width")
    private int h;

    @com.bytedance.sdk.component.no.d.dq(dq = "extra_map")
    private Map<String, Object> i;
    com.bytedance.sdk.openadsdk.core.ig.p ia;
    private double ir;
    protected String iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "end_card_height")
    private int ji;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_listener")
    private DownloadListener k;

    @com.bytedance.sdk.component.no.d.dq(dq = "orientation")
    private int kx;

    @com.bytedance.sdk.component.no.d.dq(dq = "close_button")
    private View le;
    protected com.bytedance.sdk.openadsdk.core.widget.dq.p mn;
    private double op;
    protected c p;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_reward")
    private boolean r;
    protected com.bytedance.sdk.openadsdk.core.ig.mn s;
    private double u;

    @com.bytedance.sdk.component.no.d.dq(dq = "show_type")
    private int wp;
    private final Map<String, Bitmap> n = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    int f2929d = 0;
    int ox = 0;
    int kk = 0;
    String o = "";
    protected boolean no = false;
    protected boolean ig = false;
    protected final AtomicBoolean mp = new AtomicBoolean(true);
    private Handler wn = new Handler(Looper.myLooper()) { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    ia.this.mp();
                    break;
                case 2:
                    ia.this.s();
                    break;
                case 3:
                    ia.this.mn();
                    break;
                case 4:
                    ia.this.ia();
                    break;
                case 5:
                    ia.this.kk();
                    break;
                case 6:
                    ia.this.o();
                    break;
                case 7:
                    ia.this.no();
                    break;
                case 8:
                    ia.this.ig();
                    break;
                case 9:
                    ia.this.q();
                    break;
                case 10:
                    ia.this.jy();
                    break;
                case 11:
                    ia.this.f();
                    break;
                case 12:
                    ia.this.fw();
                    break;
                case 13:
                    ia.this.cd();
                    break;
                case 14:
                    ia.this.gh();
                    break;
            }
        }
    };
    protected AtomicBoolean q = new AtomicBoolean(false);
    protected com.bytedance.sdk.openadsdk.core.fw.dq jy = new com.bytedance.sdk.openadsdk.core.fw.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.6
        @Override // com.bytedance.sdk.openadsdk.core.fw.dq
        public int d() {
            SSWebView sSWebView = ia.this.fw != null ? (SSWebView) ia.this.fw.get() : null;
            int measuredWidth = sSWebView != null ? sSWebView.getMeasuredWidth() : -1;
            return measuredWidth <= 0 ? ce.p((Context) ia.this.dq) : measuredWidth;
        }

        @Override // com.bytedance.sdk.openadsdk.core.fw.dq
        public int dq() {
            SSWebView sSWebView = ia.this.fw != null ? (SSWebView) ia.this.fw.get() : null;
            int measuredHeight = sSWebView != null ? sSWebView.getMeasuredHeight() : -1;
            return measuredHeight <= 0 ? ce.s((Context) ia.this.dq) : measuredHeight;
        }
    };

    /* renamed from: f, reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.core.fw.kk f2931f = new com.bytedance.sdk.openadsdk.core.fw.kk() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.7
        @Override // com.bytedance.sdk.openadsdk.core.fw.kk
        public void d() {
            SSWebView sSWebView = ia.this.fw != null ? (SSWebView) ia.this.fw.get() : null;
            if (sSWebView == null) {
                return;
            }
            sSWebView.o();
        }

        @Override // com.bytedance.sdk.openadsdk.core.fw.kk
        public void dq() {
            SSWebView sSWebView = ia.this.fw != null ? (SSWebView) ia.this.fw.get() : null;
            if (sSWebView == null) {
                return;
            }
            sSWebView.ia();
        }
    };
    private final com.bytedance.sdk.openadsdk.core.fw.d j = new com.bytedance.sdk.openadsdk.core.fw.d() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.8
        @Override // com.bytedance.sdk.openadsdk.core.fw.d
        public void dq(boolean z, int i, String str) {
            if (z) {
                ia iaVar = ia.this;
                iaVar.ig = true;
                if (iaVar.er) {
                    ia iaVar2 = ia.this;
                    iaVar2.dq(iaVar2.op, ia.this.ir, ia.this.u, ia.this.f2928c, ia.this.ce);
                    ia.this.er = false;
                }
            }
            if (pa.o(ia.this.cd)) {
                ia.this.dq(z, i, str);
            }
        }
    };
    private final com.bytedance.sdk.openadsdk.o.dq nh = new com.bytedance.sdk.openadsdk.o.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.9
        @Override // com.bytedance.sdk.openadsdk.o.dq
        public void dq() {
            ia.this.dq.kk(1);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public WebResourceResponse dq(String str) {
        if (!str.startsWith("csjclientimg://")) {
            return null;
        }
        Bitmap bitmap = this.n.get(str.replace("csjclientimg://", ""));
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2) {
        if (this.p == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediaFormat.KEY_WIDTH, i);
            jSONObject.put(MediaFormat.KEY_HEIGHT, i2);
            this.p.dq("resize", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void i() {
        this.iw = pa.ia(this.cd);
        float es = this.cd.es();
        if (TextUtils.isEmpty(this.iw)) {
            return;
        }
        if (this.kx == 1) {
            if (this.iw.contains("?")) {
                this.iw = awf.ad(new StringBuilder(), this.iw, "&orientation=portrait");
            } else {
                this.iw = awf.ad(new StringBuilder(), this.iw, "?orientation=portrait");
            }
        }
        if (this.iw.contains("?")) {
            this.iw += "&height=" + this.ji + "&width=" + this.h + "&aspect_ratio=" + es;
        } else {
            this.iw += "?height=" + this.ji + "&width=" + this.h + "&aspect_ratio=" + es;
        }
        this.iw = com.bytedance.sdk.openadsdk.core.component.reward.s.dq.dq(this.iw);
    }

    private void k() {
        WeakReference<SSWebView> weakReference;
        final SSWebView sSWebView;
        if (this.q.getAndSet(true) || (weakReference = this.fw) == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(sSWebView, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.s((Context) this.dq));
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.setDuration(1000L);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ce.dq((View) sSWebView, 8);
                ia.this.q.set(false);
            }
        });
        ofFloat.start();
    }

    private void le() {
        WeakReference<SSWebView> weakReference;
        if (this.q.getAndSet(true) || (weakReference = this.fw) == null) {
            return;
        }
        try {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(weakReference.get(), "translationY", ce.s((Context) this.dq), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat.setDuration(1000L);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ia.this.q.set(false);
                }
            });
            ofFloat.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void r() {
        com.bytedance.sdk.openadsdk.core.ia.dq.ox.dq dqVar = this.f2930e;
        if (dqVar == null) {
            return;
        }
        dqVar.dq(new com.bytedance.sdk.openadsdk.core.ia.dq.ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.10
        });
    }

    private void wp() {
        c cVar = this.p;
        if (cVar == null) {
            return;
        }
        cVar.dq(new SSWebView.d() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.5
            @Override // com.bytedance.sdk.component.widget.SSWebView.d
            public void dq(int i) {
                c cVar2 = ia.this.p;
                if (cVar2 != null) {
                    cVar2.dq(i);
                }
            }
        });
    }

    public void cd() {
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = this.s;
        if (mnVar != null) {
            mnVar.ox();
            this.s.p();
        }
    }

    public void d() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = new com.bytedance.sdk.openadsdk.core.ig.mn(this.gh, this.cd, jSONObject);
        this.s = mnVar;
        mnVar.dq(jSONObject, "webview_source", (Object) 2);
        com.bytedance.sdk.openadsdk.core.ig.p d2 = new com.bytedance.sdk.openadsdk.core.ig.p(this.cd, sSWebView).d(true);
        this.ia = d2;
        d2.dq(true);
        i();
        this.ia.dq(p() ? "landingpage_endcard" : this.r ? "reward_endcard" : "fullscreen_endcard");
        c cVar = new c(this.dq) { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.12
        };
        this.p = cVar;
        cVar.d(sSWebView).dq(this.cd).d(this.cd.fx()).ox(this.cd.dn()).ox(this.r ? 7 : 5).dq(this.jy).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.cd)).dq(sSWebView).d(com.bytedance.sdk.openadsdk.core.o.ox.jy.dq(this.cd)).dq(this.s).dq(this.gh).dq(this.i).dq(this.f2931f).dq(this.le).dq(this.nh);
        this.p.dq(this.j);
    }

    public void d(boolean z) {
        if (this.p == null || this.dq.isFinishing()) {
            return;
        }
        try {
            this.p.iw(z);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq() {
        final SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SSWebView sSWebView2 = sSWebView;
                if (sSWebView2 == null || sSWebView2.getViewTreeObserver() == null) {
                    return;
                }
                sSWebView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int measuredWidth = sSWebView.getMeasuredWidth();
                int measuredHeight = sSWebView.getMeasuredHeight();
                if (sSWebView.getVisibility() == 0) {
                    ia.this.dq(measuredWidth, measuredHeight);
                }
            }
        });
    }

    public void dq(double d2, double d3, double d4, double d5, String str) {
        if (this.p == null || this.dq.isFinishing()) {
            return;
        }
        if (!this.ig) {
            this.op = d2;
            this.ir = d3;
            this.f2928c = d5;
            this.u = d4;
            this.ce = str;
            this.er = true;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", d2);
            jSONObject.put("y", d3);
            jSONObject.put(MediaFormat.KEY_WIDTH, d4);
            jSONObject.put(MediaFormat.KEY_HEIGHT, d5);
            jSONObject.put("videoFrameKey", str);
            this.p.dq("endcardTransform", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void dq(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.dq).dq(false).d(false).dq(sSWebView);
        r.dq(sSWebView, op.f3334d, j.p(this.cd));
        ce.dq((com.bytedance.sdk.component.mp.dq) sSWebView);
        int i = Build.VERSION.SDK_INT;
        sSWebView.setMixedContentMode(0);
        if (i < 24) {
            sSWebView.setLayerType(0, null);
        }
    }

    public void dq(boolean z) {
        if (this.p == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z ? 1 : 0);
            this.p.dq("viewableChange", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(boolean z, int i, String str) {
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = this.s;
        if (mnVar == null) {
            return;
        }
        if (z) {
            mnVar.d();
        } else {
            mnVar.dq(i, str);
        }
    }

    public void dq(boolean z, boolean z2) {
        if (this.p == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            jSONObject.put("endcard_show", z2);
            this.p.dq("endcard_control_event", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (this.bl != 0) {
            iw();
            return true;
        }
        dq();
        d();
        ox();
        r();
        return true;
    }

    public void f() {
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = this.s;
        if (mnVar != null) {
            mnVar.no();
        }
    }

    public void fw() {
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = this.s;
        if (mnVar != null) {
            mnVar.ig();
        }
    }

    public void gh() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.dq("about:blank");
    }

    public void ia() {
        if (this.dq.yy() instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.kk) {
            k();
            return;
        }
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null) {
            return;
        }
        ce.dq((View) weakReference.get(), 8);
    }

    public void ig() {
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ia;
        if (pVar != null) {
            pVar.p();
        }
    }

    public void iw() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        ce.dq((View) sSWebView, 0);
        if (this.wp == 1) {
            ce.dq(sSWebView, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        if (this.wp == 2) {
            le();
        }
        c cVar = this.p;
        if (cVar != null) {
            cVar.dq(com.bytedance.sdk.openadsdk.core.ir.c.f(this.cd), false);
        }
        dq(true);
        d(true);
        dq(false, true);
    }

    public void jy() {
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = this.s;
        if (mnVar != null) {
            mnVar.kk();
        }
    }

    public void kk() {
        this.s = null;
    }

    public void mn() {
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ia;
        if (pVar != null) {
            pVar.dq(System.currentTimeMillis());
        }
    }

    public void mp() {
        WeakReference<SSWebView> weakReference = this.fw;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.j.dq(this.dq, sSWebView);
            com.bytedance.sdk.openadsdk.core.j.dq(sSWebView);
            sSWebView.dq();
        }
        WeakReference<SSWebView> weakReference2 = this.fw;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        c cVar = this.p;
        if (cVar != null) {
            cVar.u();
        }
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = this.s;
        if (mnVar != null) {
            mnVar.dq(true);
            this.s.fw();
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ia;
        if (pVar != null) {
            pVar.s();
        }
        this.n.clear();
    }

    public void no() {
        WeakReference<SSWebView> weakReference = this.fw;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            sSWebView.ia();
        }
        c cVar = this.p;
        if (cVar != null) {
            cVar.ir();
            this.p.iw(false);
            dq(false);
            dq(true, false);
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = this.mn;
        if (pVar != null) {
            pVar.ox();
        }
    }

    public void o() {
        WeakReference<SSWebView> weakReference = this.fw;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            sSWebView.ab_();
        }
        c cVar = this.p;
        if (cVar != null) {
            cVar.op();
            if (sSWebView != null) {
                if (sSWebView.getVisibility() == 0) {
                    this.p.iw(true);
                    dq(true);
                    dq(false, true);
                } else {
                    this.p.iw(false);
                    dq(false);
                    dq(true, false);
                }
            }
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ia;
        if (pVar != null) {
            pVar.ox();
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar2 = this.mn;
        if (pVar2 != null) {
            pVar2.d(false);
        }
    }

    public void ox() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.dq, this.p, this.cd.fx(), this.ia) { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.13
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                com.bytedance.sdk.openadsdk.core.ig.mn mnVar = ia.this.s;
                if (mnVar != null) {
                    mnVar.mn();
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                com.bytedance.sdk.openadsdk.core.ig.mn mnVar = ia.this.s;
                if (mnVar != null) {
                    mnVar.iw();
                }
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                ia.this.mp.set(false);
                ia iaVar = ia.this;
                iaVar.kk = i;
                iaVar.o = str;
                if (iaVar.s != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            jSONObject.put(PluginConstants.KEY_ERROR_CODE, i);
                            jSONObject.put("msg", str);
                        }
                        ia.this.s.dq(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                int errorCode;
                CharSequence description;
                int errorCode2;
                CharSequence description2;
                if (webResourceRequest.isForMainFrame()) {
                    ia.this.mp.set(false);
                }
                if (ia.this.s != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            errorCode = webResourceError.getErrorCode();
                            jSONObject.put(PluginConstants.KEY_ERROR_CODE, errorCode);
                            description = webResourceError.getDescription();
                            jSONObject.put("msg", description);
                        }
                        ia.this.s.dq(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                ia iaVar = ia.this;
                errorCode2 = webResourceError.getErrorCode();
                iaVar.kk = errorCode2;
                ia iaVar2 = ia.this;
                description2 = webResourceError.getDescription();
                iaVar2.o = String.valueOf(description2);
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (ia.this.s != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(PluginConstants.KEY_ERROR_CODE, webResourceResponse.getStatusCode());
                        jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        ia.this.s.dq(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (ia.this.iw.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        ia.this.mp.set(false);
                    }
                    if (webResourceResponse != null) {
                        ia.this.kk = webResourceResponse.getStatusCode();
                        ia.this.o = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String uri = webResourceRequest.getUrl().toString();
                    if (ia.this.cd == null) {
                        return super.shouldInterceptRequest(webView, uri);
                    }
                    WebResourceResponse dq = ia.this.dq(uri);
                    if (dq != null) {
                        return dq;
                    }
                    if (TextUtils.isEmpty(ia.this.cd.rp())) {
                        return super.shouldInterceptRequest(webView, uri);
                    }
                    ia.this.f2929d++;
                    return super.shouldInterceptRequest(webView, uri);
                } catch (Throwable unused) {
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                WebResourceResponse dq = ia.this.dq(str);
                return dq != null ? dq : super.shouldInterceptRequest(webView, str);
            }
        };
        this.mn = pVar;
        sSWebView.setWebViewClient(pVar);
        dq(sSWebView);
        sSWebView.setBackgroundColor(-1);
        sSWebView.setDisplayZoomControls(false);
        sSWebView.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.p, this.ia) { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ia.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.ox, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
            }
        });
        sSWebView.setDownloadListener(this.k);
    }

    public boolean p() {
        String str = this.iw;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    public void q() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.ab_();
        sSWebView.getWebView().resumeTimers();
        ce.dq((View) sSWebView, 1.0f);
        wp();
    }

    public void s() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.fw;
        if (weakReference == null || (sSWebView = weakReference.get()) == null || this.no) {
            return;
        }
        sSWebView.dq(this.iw);
        this.no = true;
    }
}
