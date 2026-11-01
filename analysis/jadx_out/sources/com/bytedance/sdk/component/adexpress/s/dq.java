package com.bytedance.sdk.component.adexpress.s;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.component.sdk.annotation.UiThread;
import com.bytedance.sdk.component.adexpress.d.ia;
import com.bytedance.sdk.component.adexpress.d.mn;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.d.no;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class dq implements no, com.bytedance.sdk.component.adexpress.d.p<SSWebView>, com.bytedance.sdk.component.adexpress.dq, com.bytedance.sdk.component.adexpress.theme.dq {

    /* renamed from: d, reason: collision with root package name */
    protected boolean f1782d;
    protected JSONObject dq;
    private String ia;
    private ia ig;
    private int jy;
    private String kk;
    private Context mn;
    private mp mp;
    private boolean no;
    private volatile mn o;
    protected SSWebView ox;
    private boolean q;
    protected com.bytedance.sdk.component.adexpress.dq.ox.d s;
    protected int p = 8;
    protected AtomicBoolean iw = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    private boolean f1783f = false;

    public dq(Context context, mp mpVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        this.no = false;
        this.mn = context;
        this.mp = mpVar;
        this.ia = mpVar.p();
        themeStatusBroadcastReceiver.dq(this);
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            ig();
            return;
        }
        SSWebView mp = mp();
        this.ox = mp;
        if (mp != null) {
            this.no = true;
        } else if (com.bytedance.sdk.component.adexpress.p.getContext() != null) {
            this.ox = new SSWebView(com.bytedance.sdk.component.adexpress.p.getContext());
        }
    }

    private int d(Activity activity) {
        return activity.hashCode();
    }

    private void dq(int i, String str) {
        if (this.o != null) {
            this.o.dq(i, str);
        }
    }

    private void ig() {
        if (this.mn == null && com.bytedance.sdk.component.adexpress.p.getContext() != null) {
            this.mn = com.bytedance.sdk.component.adexpress.p.getContext();
        }
        if (this.mn != null) {
            SSWebView mp = mp();
            this.ox = mp;
            if (mp == null) {
                this.ox = new SSWebView(new MutableContextWrapper(this.mn.getApplicationContext()));
            } else {
                this.no = true;
            }
        }
    }

    private SSWebView mp() {
        return this.mp.wp() ? s.dq().dq(this.mn, this.ia) : s.dq().d(this.mn, this.ia);
    }

    private void q() {
        if (this.mp.wp()) {
            s.dq().d(this.ox);
        } else {
            s.dq().ox(this.ox);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public SSWebView mn() {
        return dq();
    }

    public abstract void d(int i);

    public SSWebView dq() {
        return this.ox;
    }

    @UiThread
    public void dq(float f2, float f3) {
        this.mp.s().ia();
        if (com.bytedance.sdk.component.adexpress.p.dq() && ox() == 9) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) dq().getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            layoutParams.width = -1;
            layoutParams.height = -1;
            dq().setLayoutParams(layoutParams);
            return;
        }
        int dq = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.mn, f2);
        int dq2 = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.mn, f3);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) dq().getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(dq, dq2);
        }
        layoutParams2.width = dq;
        layoutParams2.height = dq2;
        dq().setLayoutParams(layoutParams2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dq
    public void dq(Activity activity) {
        if (this.jy == 0 || activity == null || activity.hashCode() != this.jy) {
            return;
        }
        p();
        o();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.no
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
        ia iaVar = this.ig;
        if (iaVar != null) {
            iaVar.dq(view, i, oxVar);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.no
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, int i2) {
        ia iaVar = this.ig;
        if (iaVar != null) {
            iaVar.dq(view, i, oxVar, i2);
        }
    }

    public void dq(ia iaVar) {
        this.ig = iaVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    public void dq(mn mnVar) {
        this.o = mnVar;
        boolean z = dq() == null;
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            z |= dq().getWebView() == null;
        }
        if (z) {
            mn mnVar2 = this.o;
            StringBuilder sb = new StringBuilder("SSWebview null is ");
            sb.append(dq() == null);
            sb.append(" or Webview is null");
            mnVar2.dq(102, sb.toString());
            return;
        }
        if (TextUtils.isEmpty(this.kk)) {
            this.o.dq(102, "url is empty");
            return;
        }
        if (this.mp.wp()) {
            if (ox() == 9 && !com.bytedance.sdk.component.adexpress.dq.d.d.d(this.dq)) {
                mn mnVar3 = this.o;
                StringBuilder sb2 = new StringBuilder("data null is ");
                sb2.append(this.dq == null);
                mnVar3.dq(103, sb2.toString());
                return;
            }
        } else {
            if (!this.f1783f && !com.bytedance.sdk.component.adexpress.dq.d.d.dq(this.dq)) {
                mn mnVar4 = this.o;
                StringBuilder sb3 = new StringBuilder("data null is ");
                sb3.append(this.dq == null);
                mnVar4.dq(103, sb3.toString());
                return;
            }
            if (this.f1783f && !com.bytedance.sdk.component.adexpress.dq.d.d.ox(this.dq)) {
                mn mnVar5 = this.o;
                StringBuilder sb4 = new StringBuilder("choice ad data null is ");
                sb4.append(this.dq == null);
                mnVar5.dq(103, sb4.toString());
                return;
            }
        }
        this.mp.s().d(this.no);
        if (!this.no) {
            SSWebView dq = dq();
            dq.kk();
            this.mp.s().mn();
            dq.dq(this.kk);
            return;
        }
        try {
            this.ox.kk();
            this.mp.s().mn();
            com.bytedance.sdk.component.utils.no.dq(this.ox.getWebView(), "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();");
        } catch (Exception e2) {
            s.dq().s(this.ox);
            this.o.dq(102, "load exception is " + e2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.no
    public void dq(final q qVar) {
        if (qVar == null) {
            if (this.o != null) {
                this.o.dq(105, "renderResult is null");
                return;
            }
            return;
        }
        boolean ox = qVar.ox();
        final float p = (float) qVar.p();
        final float s = (float) qVar.s();
        if (ox() != 0 || (p > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && s > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            this.f1782d = ox;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                dq(qVar, p, s);
                return;
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.s.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.dq(qVar, p, s);
                    }
                });
                return;
            }
        }
        if (this.o != null) {
            this.o.dq(105, "width is " + p + "height is " + s);
        }
    }

    public void dq(q qVar, float f2, float f3) {
        dq(this.f1782d, qVar.no());
        boolean z = this.f1782d;
        if (!z || this.q) {
            if (!z) {
                s.dq().s(this.ox);
            }
            dq(qVar.no(), qVar.o());
        } else {
            dq(f2, f3);
            d(this.p);
            if (this.o != null) {
                this.o.dq(dq(), qVar);
            }
        }
    }

    public void dq(String str) {
        this.kk = str;
    }

    public void dq(boolean z) {
        this.q = z;
    }

    public void dq(boolean z, int i) {
    }

    public void ia() {
        kk();
        Activity dq = com.bytedance.sdk.component.utils.d.dq(this.ox);
        if (dq != null) {
            this.jy = d(dq);
        }
    }

    public abstract void iw();

    public void kk() {
    }

    public mp no() {
        return this.mp;
    }

    public void o() {
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    public int ox() {
        return 0;
    }

    public void p() {
        if (this.iw.get()) {
            return;
        }
        this.iw.set(true);
        iw();
        if (this.ox.getParent() != null) {
            ((ViewGroup) this.ox.getParent()).removeView(this.ox);
        }
        if (this.f1782d) {
            q();
        } else {
            s.dq().s(this.ox);
        }
    }

    public void s() {
        if (dq() == null) {
            return;
        }
        try {
            dq().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }
}
