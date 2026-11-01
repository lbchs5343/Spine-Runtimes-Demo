package com.bytedance.sdk.openadsdk.core.component.reward.endcard;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Patterns;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.DownloadListener;
import android.webkit.URLUtil;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.fw.kk;
import com.bytedance.sdk.openadsdk.core.ig.mn;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.r;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq {
    protected AtomicInteger cd;

    /* renamed from: d, reason: collision with root package name */
    protected j f2598d;
    protected TTBaseVideoActivity dq;
    protected int gh;
    protected int i;
    protected c ia;
    com.bytedance.sdk.openadsdk.core.ig.p ig;
    protected mn kk;
    protected SSWebView mn;
    protected com.bytedance.sdk.openadsdk.core.widget.dq.p no;
    protected String o;
    protected String ox;
    protected boolean p;
    protected int r;
    int s = 0;
    int iw = 0;
    int mp = 0;
    String q = "";
    protected boolean jy = false;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f2599f = false;
    protected final AtomicBoolean fw = new AtomicBoolean(true);
    protected AtomicBoolean le = new AtomicBoolean(false);
    protected com.bytedance.sdk.openadsdk.core.fw.dq k = new com.bytedance.sdk.openadsdk.core.fw.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq.1
        @Override // com.bytedance.sdk.openadsdk.core.fw.dq
        public int d() {
            SSWebView sSWebView = dq.this.mn;
            int measuredWidth = sSWebView != null ? sSWebView.getMeasuredWidth() : -1;
            ig.dq("TTAndroidObject", "mWebView>>>>width=".concat(String.valueOf(measuredWidth)));
            return measuredWidth <= 0 ? ce.p((Context) dq.this.dq) : measuredWidth;
        }

        @Override // com.bytedance.sdk.openadsdk.core.fw.dq
        public int dq() {
            SSWebView sSWebView = dq.this.mn;
            int measuredHeight = sSWebView != null ? sSWebView.getMeasuredHeight() : -1;
            ig.dq("TTAndroidObject", "mWebView>>>>height=".concat(String.valueOf(measuredHeight)));
            return measuredHeight <= 0 ? ce.s((Context) dq.this.dq) : measuredHeight;
        }
    };
    protected kk wp = new kk() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq.2
        @Override // com.bytedance.sdk.openadsdk.core.fw.kk
        public void d() {
            SSWebView sSWebView = dq.this.mn;
            if (sSWebView == null) {
                return;
            }
            sSWebView.o();
        }

        @Override // com.bytedance.sdk.openadsdk.core.fw.kk
        public void dq() {
            SSWebView sSWebView = dq.this.mn;
            if (sSWebView == null) {
                return;
            }
            sSWebView.ia();
        }
    };

    public dq(TTBaseVideoActivity tTBaseVideoActivity, j jVar, String str, int i, int i2, boolean z) {
        this.dq = tTBaseVideoActivity;
        this.f2598d = jVar;
        this.ox = str;
        this.gh = jVar.ho();
        if (wp.d().fn()) {
            float f2 = this.dq.getResources().getDisplayMetrics().density;
            float f3 = Resources.getSystem().getDisplayMetrics().density;
            this.r = ce.d(f3, ce.dq(f2, i));
            this.i = ce.d(f3, ce.dq(f2, i2));
        } else {
            this.r = i;
            this.i = i2;
        }
        this.p = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i, int i2) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediaFormat.KEY_WIDTH, i);
            jSONObject.put(MediaFormat.KEY_HEIGHT, i2);
            this.ia.dq("resize", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean dq(String str) {
        try {
            new URL(str);
            if (URLUtil.isValidUrl(str)) {
                if (Patterns.WEB_URL.matcher(str).matches()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private void h() {
        if (this.le.getAndSet(true)) {
            return;
        }
        try {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mn, "translationY", ce.s((Context) this.dq), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat.setDuration(1000L);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    dq.this.le.set(false);
                }
            });
            ofFloat.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void ji() {
        if (this.le.getAndSet(true)) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mn, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.s((Context) this.dq));
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.setDuration(1000L);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ce.dq((View) dq.this.mn, 8);
                dq.this.le.set(false);
            }
        });
        ofFloat.start();
    }

    public void cd() {
        mn mnVar = this.kk;
        if (mnVar != null) {
            mnVar.no();
        }
    }

    public void d(boolean z) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            this.ia.dq("volumeChange", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean d() {
        return this.f2599f;
    }

    public void dq() {
        SSWebView sSWebView = this.mn;
        if (sSWebView != null) {
            sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    SSWebView sSWebView2 = dq.this.mn;
                    if (sSWebView2 == null || sSWebView2.getViewTreeObserver() == null) {
                        return;
                    }
                    dq.this.mn.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int measuredWidth = dq.this.mn.getMeasuredWidth();
                    int measuredHeight = dq.this.mn.getMeasuredHeight();
                    if (dq.this.mn.getVisibility() == 0) {
                        dq.this.d(measuredWidth, measuredHeight);
                    }
                }
            });
        }
    }

    public void dq(int i) {
        ce.dq((View) this.mn, 0);
        if (i == 1) {
            ce.dq(this.mn, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        if (i == 2) {
            h();
        }
        c cVar = this.ia;
        if (cVar != null) {
            cVar.dq(com.bytedance.sdk.openadsdk.core.ir.c.f(this.f2598d), false);
        }
    }

    public void dq(int i, int i2) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("downloadStatus", i);
            jSONObject.put("downloadProcessRate", i2);
            this.ia.d("showDownloadStatus", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(long j, long j2, int i) {
        if (j2 > 0) {
            dq(i, (int) ((j * 100) / j2));
        }
    }

    public abstract void dq(DownloadListener downloadListener, com.bytedance.sdk.openadsdk.core.d.d dVar);

    public void dq(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.dq).dq(false).d(false).dq(sSWebView);
        r.dq(sSWebView, op.f3334d, j.p(this.f2598d));
        ce.dq((com.bytedance.sdk.component.mp.dq) sSWebView);
        int i = Build.VERSION.SDK_INT;
        sSWebView.setMixedContentMode(0);
        if (i < 24) {
            this.mn.setLayerType(0, null);
        }
    }

    public void dq(j jVar) {
        this.f2598d = jVar;
        this.jy = false;
    }

    public void dq(Map<String, Object> map) {
        mn mnVar = this.kk;
        if (mnVar != null) {
            mnVar.o();
        }
    }

    public void dq(JSONObject jSONObject) {
        c cVar = this.ia;
        if (cVar == null) {
            ig.p("BaseEndCard", "mJsObject is null!");
        } else {
            cVar.dq("showPlayAgainEntrance", jSONObject);
        }
    }

    public void dq(boolean z) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z ? 1 : 0);
            this.ia.dq("viewableChange", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(boolean z, int i, String str) {
        mn mnVar = this.kk;
        if (mnVar == null) {
            return;
        }
        if (z) {
            mnVar.d();
        } else {
            mnVar.dq(i, str);
        }
    }

    public abstract void dq(boolean z, Map<String, Object> map, View view);

    public void dq(boolean z, boolean z2) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            jSONObject.put("endcard_show", z2);
            this.ia.dq("endcard_control_event", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void e() {
    }

    public void f() {
        SSWebView sSWebView = this.mn;
        if (sSWebView != null) {
            sSWebView.ab_();
            this.mn.getWebView().resumeTimers();
            ce.dq((View) this.mn, 1.0f);
            kx();
        }
    }

    public void fw() {
        mn mnVar = this.kk;
        if (mnVar != null) {
            mnVar.kk();
        }
    }

    public void gh() {
        mn mnVar = this.kk;
        if (mnVar != null) {
            mnVar.ig();
        }
    }

    public boolean i() {
        c cVar = this.ia;
        if (cVar == null) {
            return false;
        }
        return cVar.e();
    }

    public void ia() {
        SSWebView sSWebView = this.mn;
        if (sSWebView == null || !sSWebView.p()) {
            return;
        }
        this.mn.s();
    }

    public void ig() {
        SSWebView sSWebView = this.mn;
        if (sSWebView != null) {
            sSWebView.ab_();
        }
        c cVar = this.ia;
        if (cVar != null) {
            cVar.op();
            SSWebView sSWebView2 = this.mn;
            if (sSWebView2 != null) {
                if (sSWebView2.getVisibility() == 0) {
                    this.ia.iw(true);
                    dq(true);
                    dq(false, true);
                } else {
                    this.ia.iw(false);
                    dq(false);
                    dq(true, false);
                }
            }
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ig;
        if (pVar != null) {
            pVar.ox();
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar2 = this.no;
        if (pVar2 != null) {
            pVar2.d(false);
        }
    }

    public void iw() {
        if (this.dq.yy() instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.kk) {
            ji();
        } else {
            ce.dq((View) this.mn, 8);
        }
    }

    public void jy() {
        c cVar = this.ia;
        if (cVar != null) {
            cVar.u();
        }
        mn mnVar = this.kk;
        if (mnVar != null) {
            mnVar.dq(true);
            this.kk.fw();
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ig;
        if (pVar != null) {
            pVar.s();
        }
        SSWebView sSWebView = this.mn;
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.j.dq(this.dq, sSWebView);
            com.bytedance.sdk.openadsdk.core.j.dq(this.mn);
            this.mn.dq();
        }
        this.mn = null;
    }

    public void k() {
        SSWebView sSWebView = this.mn;
        if (sSWebView != null) {
            sSWebView.dq("about:blank");
        }
    }

    public void kk() {
        this.kk = null;
    }

    public void kx() {
        c cVar = this.ia;
        if (cVar == null) {
            return;
        }
        cVar.dq(new SSWebView.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq.6
            @Override // com.bytedance.sdk.component.widget.SSWebView.d
            public void dq(int i) {
                c cVar2 = dq.this.ia;
                if (cVar2 != null) {
                    cVar2.dq(i);
                }
            }
        });
    }

    public boolean le() {
        return dq(this.o);
    }

    public boolean mn() {
        SSWebView sSWebView = this.mn;
        if (sSWebView != null) {
            return sSWebView.p();
        }
        return false;
    }

    public void mp() {
        SSWebView sSWebView = this.mn;
        if (sSWebView != null) {
            sSWebView.ia();
        }
        c cVar = this.ia;
        if (cVar != null) {
            cVar.ir();
            this.ia.iw(false);
            dq(false);
            dq(true, false);
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = this.no;
        if (pVar != null) {
            pVar.ox();
        }
    }

    public String no() {
        return this.q;
    }

    public int o() {
        return this.mp;
    }

    public void ox(boolean z) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            this.ia.iw(z);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean ox() {
        if (!le()) {
            return false;
        }
        AtomicInteger atomicInteger = this.cd;
        if (atomicInteger == null || atomicInteger.get() == 0) {
            return this.fw.get();
        }
        return true;
    }

    public void p(boolean z) {
    }

    public boolean p() {
        return this.jy;
    }

    public void q() {
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ig;
        if (pVar != null) {
            pVar.p();
        }
    }

    public void r() {
        mn mnVar = this.kk;
        if (mnVar != null) {
            mnVar.ox();
            this.kk.p();
        }
    }

    public void s() {
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ig;
        if (pVar != null) {
            pVar.dq(System.currentTimeMillis());
        }
    }

    public abstract String wp();
}
