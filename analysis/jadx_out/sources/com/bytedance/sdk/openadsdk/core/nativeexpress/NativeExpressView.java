package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.d.o;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.no.dq.d;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.d.p;
import com.bytedance.sdk.openadsdk.core.er;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.v;
import com.bytedance.sdk.openadsdk.core.ugeno.ox.dq;
import g.dbw;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class NativeExpressView extends FrameLayout implements com.bytedance.sdk.component.adexpress.d.ia, com.bytedance.sdk.component.adexpress.d.jy, com.bytedance.sdk.component.adexpress.dynamic.p, com.bytedance.sdk.component.adexpress.theme.dq, o {
    public static int cd = 500;
    private v bl;
    private View bu;
    private com.bytedance.sdk.component.adexpress.d.kk by;

    /* renamed from: c, reason: collision with root package name */
    private final Runnable f3208c;
    private final Runnable ce;
    private float cv;

    /* renamed from: d, reason: collision with root package name */
    private int f3209d;
    private float dc;
    private boolean dq;
    private r ds;

    /* renamed from: e, reason: collision with root package name */
    private float f3210e;
    private ThemeStatusBroadcastReceiver er;

    /* renamed from: f, reason: collision with root package name */
    protected com.bytedance.sdk.component.adexpress.d.ox f3211f;
    private long fd;
    protected boolean fw;
    protected boolean gh;
    private volatile com.bytedance.sdk.component.adexpress.d.q gx;
    private com.bytedance.sdk.openadsdk.iw.dq h;
    private float ha;
    private com.bytedance.sdk.openadsdk.core.d.dq i;
    protected com.bytedance.sdk.openadsdk.f.d.ox.d ia;
    protected ox.InterfaceC0004ox ig;
    private final ViewTreeObserver.OnScrollChangedListener ir;
    protected final Context iw;
    private o.dq j;
    private boolean ji;
    private float jw;
    protected boolean jy;
    private final AtomicBoolean k;
    protected j kk;
    private float kx;
    private com.bytedance.sdk.component.adexpress.d.iw l;
    private com.bytedance.sdk.openadsdk.core.d.d le;
    protected String mn;
    protected FrameLayout mp;
    private FrameLayout n;
    private List<com.bytedance.sdk.component.adexpress.d.o> nh;
    protected ox.p no;
    protected ExpressVideoView o;
    private com.bytedance.sdk.component.adexpress.d.d ob;
    private FrameLayout op;
    private com.bytedance.sdk.openadsdk.core.dislike.ui.dq ox;
    private Dialog p;
    protected boolean q;
    protected FrameLayout r;
    private dq s;
    private com.bytedance.sdk.openadsdk.core.ugeno.ox.p t;
    private final Runnable u;
    private com.bytedance.sdk.component.adexpress.d.p<? extends View> uh;
    private boolean v;
    private com.bytedance.sdk.component.adexpress.d.f vf;
    private SparseArray<p.dq> vw;
    private kx wn;
    private String wp;
    private com.bytedance.sdk.component.adexpress.d.mp xz;
    private jy yy;

    public NativeExpressView(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        super(context);
        this.dq = true;
        this.f3209d = 0;
        this.mn = "embeded_ad";
        this.k = new AtomicBoolean(false);
        this.wp = null;
        this.jy = false;
        this.fw = false;
        this.gh = false;
        this.ji = false;
        this.ir = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.u);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.u, 500L);
            }
        };
        this.u = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!er.dq(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.p(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.p(nativeExpressView.getVisibility());
                }
            }
        };
        this.f3208c = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.3
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.p(0);
            }
        };
        this.ce = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.p(8);
            }
        };
        this.vw = new SparseArray<>();
        this.ha = -1.0f;
        this.cv = -1.0f;
        this.dc = -1.0f;
        this.jw = -1.0f;
        this.fd = 0L;
        this.mn = str;
        this.iw = context;
        this.kk = jVar;
        this.ia = dVar;
        ig();
    }

    public NativeExpressView(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str, boolean z) {
        super(context);
        this.dq = true;
        this.f3209d = 0;
        this.mn = "embeded_ad";
        this.k = new AtomicBoolean(false);
        this.wp = null;
        this.jy = false;
        this.fw = false;
        this.gh = false;
        this.ji = false;
        this.ir = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.u);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.u, 500L);
            }
        };
        this.u = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!er.dq(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.p(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.p(nativeExpressView.getVisibility());
                }
            }
        };
        this.f3208c = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.3
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.p(0);
            }
        };
        this.ce = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.p(8);
            }
        };
        this.vw = new SparseArray<>();
        this.ha = -1.0f;
        this.cv = -1.0f;
        this.dc = -1.0f;
        this.jw = -1.0f;
        this.fd = 0L;
        this.mn = str;
        this.iw = context;
        this.kk = jVar;
        this.ia = dVar;
        this.gh = z;
        if (dVar.k() == 9) {
            this.jy = dVar.cd() == 2;
        }
        ig();
    }

    public NativeExpressView(boolean z, Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str, boolean z2) {
        super(context);
        this.dq = true;
        this.f3209d = 0;
        this.mn = "embeded_ad";
        this.k = new AtomicBoolean(false);
        this.wp = null;
        this.jy = false;
        this.fw = false;
        this.gh = false;
        this.ji = false;
        this.ir = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.u);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.u, 500L);
            }
        };
        this.u = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!er.dq(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.p(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.p(nativeExpressView.getVisibility());
                }
            }
        };
        this.f3208c = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.3
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.p(0);
            }
        };
        this.ce = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.p(8);
            }
        };
        this.vw = new SparseArray<>();
        this.ha = -1.0f;
        this.cv = -1.0f;
        this.dc = -1.0f;
        this.jw = -1.0f;
        this.fd = 0L;
        this.mn = str;
        this.iw = context;
        this.kk = jVar;
        this.ia = dVar;
        this.jy = z;
        this.gh = z2;
        ig();
    }

    private boolean bl() {
        if (TextUtils.equals(this.mn, "rewarded_video") || TextUtils.equals(this.mn, "fullscreen_interstitial_ad")) {
            return this.kk.qc();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.bytedance.sdk.openadsdk.iw.dq dqVar = this.h;
        if (dqVar instanceof com.bytedance.sdk.openadsdk.core.ig.mn) {
            ((com.bytedance.sdk.openadsdk.core.ig.mn) dqVar).d(this.xz.iw());
        }
        this.h.dq();
        this.j.dq(this);
        this.j.dq();
    }

    private void ce() {
        Dialog dialog = this.p;
        if (dialog != null) {
            dialog.show();
            return;
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq();
        } else {
            TTDelegateActivity.dq(getContext(), this.kk);
        }
    }

    private void d(View view, int i, com.bytedance.sdk.openadsdk.core.r.k kVar, com.bytedance.sdk.openadsdk.core.r.o oVar, int i2) {
        if (j.s(this.kk)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.i;
        if (dqVar != null) {
            dq(((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(), i);
            this.i.dq(kVar);
            this.i.dq(oVar);
            this.i.dq(view, oVar);
        }
        dq dqVar2 = this.s;
        if (dqVar2 != null) {
            dqVar2.dq(this, i2);
        }
    }

    private void d(View view, com.bytedance.sdk.openadsdk.core.r.k kVar, com.bytedance.sdk.openadsdk.core.r.o oVar, int i, String str, int i2) {
        if (j.s(this.kk)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.d.d dVar = this.le;
        if (dVar != null) {
            dVar.dq(kVar);
            com.bytedance.sdk.openadsdk.core.d.dq.ox.dq dqVar = (com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.le.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class);
            dq(dqVar);
            dqVar.d(str);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.le.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d(i);
            this.le.dq(oVar);
            ((com.bytedance.sdk.openadsdk.core.d.dq.d.iw) this.le.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.iw.class)).dq(kVar);
            ((com.bytedance.sdk.openadsdk.core.d.dq.d.s) this.le.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.s.class)).dq(kVar);
            Map<String, Object> dq = com.bytedance.sdk.component.no.s.dq.dq().dq(this.kk.hashCode() + this.kk.el());
            dq.put("convert_tag", kVar.fw);
            dq(kVar, dq);
            this.le.dq(view, oVar);
            com.bytedance.sdk.openadsdk.core.d.dq.d.iw.dq(this.le);
        }
        dq dqVar2 = this.s;
        if (dqVar2 != null) {
            dqVar2.dq(this, i2);
        }
    }

    private void d(j jVar, Context context, String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(jVar, context, str);
    }

    private void d(String str) {
        if (this.kk == null || TextUtils.isEmpty(str) || !str.equals("feed_video_middle_page")) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.kk, "feed_video_middle_page", "middle_page_click");
    }

    private void dq(View view, int i, com.bytedance.sdk.openadsdk.core.r.k kVar, com.bytedance.sdk.openadsdk.core.r.o oVar, int i2) {
        if (j.s(this.kk)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.d.d dVar = this.le;
        if (dVar != null) {
            dq(((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(), i);
            this.le.dq(kVar);
            this.le.dq(oVar);
            this.le.dq(view, oVar);
        }
        dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.dq(this, i2);
        }
    }

    private void dq(View view, com.bytedance.sdk.openadsdk.core.r.k kVar, com.bytedance.sdk.openadsdk.core.r.o oVar, int i, String str, int i2) {
        if (j.s(this.kk)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.i;
        if (dqVar != null) {
            dqVar.dq(kVar);
            com.bytedance.sdk.openadsdk.core.d.dq.ox.dq dqVar2 = (com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.i.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class);
            dq(dqVar2);
            dqVar2.d(str);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.i.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d(i);
            this.i.dq(oVar);
            ((com.bytedance.sdk.openadsdk.core.d.dq.d.iw) this.i.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.iw.class)).dq(kVar);
            ((com.bytedance.sdk.openadsdk.core.d.dq.d.s) this.i.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.s.class)).dq(kVar);
            Map<String, Object> dq = com.bytedance.sdk.component.no.s.dq.dq().dq(this.kk.hashCode() + this.kk.el());
            dq.put("convert_tag", kVar.fw);
            dq(kVar, dq);
            this.i.dq(view, oVar);
            com.bytedance.sdk.openadsdk.core.d.dq.d.iw.dq(this.i);
        }
        dq dqVar3 = this.s;
        if (dqVar3 != null) {
            dqVar3.dq(this, i2);
        }
    }

    private void dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq dqVar) {
        v vVar = this.bl;
        if (vVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("custom_express_gesture", 1);
            hashMap.put("express_gesture_type", Integer.valueOf(vVar.d()));
            hashMap.put("express_slide_direction", Integer.valueOf(vVar.p()));
            hashMap.put("express_slide_threshold", Double.valueOf(vVar.ox()));
            dqVar.dq(hashMap);
        }
    }

    private void dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar, int i) {
        if (oxVar != null && (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia)) {
            com.bytedance.sdk.openadsdk.core.o.ox.ox.ox no = ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar).no();
            no.d(true);
            no.dq(i);
        }
    }

    private void dq(j jVar, Context context, String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.d(jVar, context, str);
    }

    private boolean dq(String str) {
        if (this.kk.ju() || TextUtils.isEmpty(str)) {
            return false;
        }
        c.kx();
        HashMap hashMap = new HashMap();
        hashMap.put("material_meta", this.kk);
        hashMap.put("context", this.iw);
        new d.dq(str).dq(this.kk.ve()).dq(hashMap).dq().dq();
        return true;
    }

    private void e() {
        try {
            if (this.er == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.bytedance.openadsdk.themeTypeChangeReceiver");
            this.iw.registerReceiver(this.er, intentFilter, c.e(), null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean er() {
        j jVar = this.kk;
        return jVar != null && jVar.gx() == 1 && j.d(this.kk);
    }

    private int getRenderThread() {
        if (ji() || (com.bytedance.sdk.openadsdk.core.ox.p.dq().op() & 2) == 2) {
            return 1;
        }
        return this.kk.kj();
    }

    private boolean h() {
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar = this.ia;
        return dVar != null && op.f3334d >= 5900 && dVar.bl();
    }

    private void ir() {
        NativeExpressView nativeExpressView;
        this.f3209d = this.kk.dr();
        if (op() && this.kk.ce() == 1) {
            this.f3209d = 1000;
        }
        com.bytedance.sdk.openadsdk.core.no.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.no.dq.dq(this.kk, new WeakReference(this));
        int i = this.f3209d;
        if (i != 3) {
            if (i == 7) {
                com.bytedance.sdk.openadsdk.core.ugeno.ox.ox oxVar = new com.bytedance.sdk.openadsdk.core.ugeno.ox.ox(this.iw, this.kk, (com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) this.xz, this);
                this.ji = oxVar.ia();
                com.bytedance.sdk.openadsdk.core.ugeno.ox.p pVar = new com.bytedance.sdk.openadsdk.core.ugeno.ox.p(this.iw, oxVar, this, this.xz);
                this.t = pVar;
                this.nh.add(pVar);
            } else if (i == 10) {
                com.bytedance.sdk.openadsdk.core.ugeno.ox.s sVar = new com.bytedance.sdk.openadsdk.core.ugeno.ox.s(this.iw, this.kk, (com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) this.xz, this);
                this.ji = sVar.ia();
                com.bytedance.sdk.openadsdk.core.ugeno.ox.p pVar2 = new com.bytedance.sdk.openadsdk.core.ugeno.ox.p(this.iw, sVar, this, this.xz);
                this.t = pVar2;
                this.nh.add(pVar2);
            } else if (i != 1000) {
                kx kxVar = new kx(this.iw, this.xz, this.er, this.h, this.kk, this.by);
                this.wn = kxVar;
                com.bytedance.sdk.component.adexpress.d.f fVar = new com.bytedance.sdk.component.adexpress.d.f(this.iw, this.xz, kxVar, this);
                this.vf = fVar;
                this.nh.add(fVar);
            }
            nativeExpressView = this;
        } else {
            nativeExpressView = this;
            com.bytedance.sdk.component.adexpress.d.d dVar = new com.bytedance.sdk.component.adexpress.d.d(this.iw, this.xz, this.er, this.gh, new com.bytedance.sdk.component.adexpress.dynamic.p.mn(), nativeExpressView, dqVar);
            nativeExpressView.ob = dVar;
            nativeExpressView.nh.add(dVar);
            nativeExpressView.ob.dq(com.bytedance.sdk.openadsdk.core.wp.d().zc());
        }
        int mj = nativeExpressView.kk.mj();
        if (mj > 0 && h() && TextUtils.equals(nativeExpressView.mn, "embeded_ad")) {
            nativeExpressView.nh.add(new com.bytedance.sdk.openadsdk.core.ugeno.ox.p(nativeExpressView.iw, new com.bytedance.sdk.openadsdk.core.ugeno.dq.ox(nativeExpressView.iw, nativeExpressView.kk, (com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) nativeExpressView.xz, this), this, nativeExpressView.xz));
        } else {
            boolean z = mj == 1;
            nativeExpressView.dq = z;
            if (z || nativeExpressView.f3209d == 1000) {
                com.bytedance.sdk.component.adexpress.d.iw iwVar = new com.bytedance.sdk.component.adexpress.d.iw(nativeExpressView.iw, nativeExpressView.xz, new fw(this, nativeExpressView.er, nativeExpressView.xz));
                nativeExpressView.l = iwVar;
                nativeExpressView.nh.add(iwVar);
            } else if (com.bytedance.sdk.openadsdk.core.ugeno.dq.dq.d(nativeExpressView.kk)) {
                nativeExpressView.nh.add(new com.bytedance.sdk.openadsdk.core.ugeno.ox.p(nativeExpressView.iw, new com.bytedance.sdk.openadsdk.core.ugeno.dq.ox(nativeExpressView.iw, nativeExpressView.kk, (com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) nativeExpressView.xz, this), this, nativeExpressView.xz));
            }
        }
        nativeExpressView.j = new com.bytedance.sdk.component.adexpress.d.ig(nativeExpressView.nh, nativeExpressView.by);
    }

    private boolean ji() {
        return com.bytedance.sdk.openadsdk.core.wp.d().kk(c.kk(this.kk)) == 4 && op();
    }

    private boolean jy() {
        return op() && this.kk.ce() == 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v17, types: [com.bytedance.sdk.component.adexpress.d.mp$dq] */
    private void kx() {
        dq.C0191dq c0191dq;
        boolean ou = this.kk.ou();
        JSONObject jSONObject = null;
        if (!jy()) {
            if ("feed_video_middle_page".equals(this.mn)) {
                jSONObject = com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.ox(this.f3210e, this.kx, this.jy, this.kk);
            } else if (ou) {
                jSONObject = com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.dq(this.f3210e, this.kx, this.jy, this.kk);
            } else if (!com.bytedance.sdk.openadsdk.core.ugeno.kk.kk(this.kk)) {
                jSONObject = com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.d(this.f3210e, this.kx, this.jy, this.kk);
            } else if (this.kk.tv() != null && !TextUtils.isEmpty(this.kk.tv().kk())) {
                jSONObject = com.bytedance.sdk.openadsdk.core.ugeno.kk.d(this.kk.tv().o(), this.kk.tv().kk());
            }
            if (this.kk.tv() != null) {
                com.bytedance.sdk.openadsdk.core.s.dq().dq(this.kk.tv().d());
            }
            if (this.kk.ny() != null) {
                com.bytedance.sdk.openadsdk.core.s.dq().dq(this.kk.ny().dq());
            }
        }
        this.h = n();
        if (jy()) {
            this.by = new cd();
        } else {
            this.by = new kk(this.h, this.mn, this.kk, this.wp);
        }
        boolean bl = bl();
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.kk(this.kk) || com.bytedance.sdk.openadsdk.core.ugeno.kk.o(this.kk) || com.bytedance.sdk.openadsdk.core.ugeno.dq.dq.d(this.kk) || h()) {
            dq.C0191dq c0191dq2 = new dq.C0191dq();
            c0191dq2.s(com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(this.kk, this));
            c0191dq2.dq((dbw) this.by);
            c0191dq2.dq(this.f3210e);
            c0191dq2.d(this.kx);
            c0191dq2.p(h());
            c0191dq = c0191dq2;
        } else {
            c0191dq = new mp.dq();
        }
        c0191dq.ox(ou);
        if (TextUtils.equals(this.mn, "splash_ad")) {
            c0191dq.iw(com.bytedance.sdk.openadsdk.h.kk.s());
        }
        this.xz = c0191dq.dq(this.mn).d(this.kk.fx()).ox(c.f(this.kk)).p(this.kk.dn()).dq(jSONObject).dq(this.by).dq(com.bytedance.sdk.openadsdk.core.wp.d().dq(this.mn, this.kk.dr())).d(bl).d(this.kk.uh()).ox(this.kk.y()).s(com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.d(this.kk)).dq(com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.ox(this.kk)).p(getRenderThread()).s(this.kk.us()).iw(this.kk.tn()).mn(this.kk.bs()).d(this.kk.rw()).ox(this.kk.hm()).p(this.kk.aq()).kk(this.kk.jo()).ia(this.kk.mc()).mn(this.kk.rr()).ia("https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/").dq(com.bytedance.sdk.openadsdk.core.no.ia().s()).dq();
    }

    private com.bytedance.sdk.openadsdk.iw.dq n() {
        JSONObject jSONObject = new JSONObject();
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = new com.bytedance.sdk.openadsdk.core.ig.mn(this.mn, this.kk, jSONObject);
        mnVar.dq(jSONObject, "webview_source", (Object) 1);
        return mnVar;
    }

    private boolean op() {
        return TextUtils.equals(this.mn, "splash_ad") || TextUtils.equals(this.mn, "cache_splash_ad");
    }

    private void ox(j jVar, Context context, String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(context, jVar, str);
    }

    private void q() {
        ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver = new ThemeStatusBroadcastReceiver();
        this.er = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.dq(this);
    }

    private void u() {
        if (jy()) {
            return;
        }
        e();
    }

    private void wp() {
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar;
        if (TextUtils.equals(this.mn, "splash_ad") && (dVar = this.ia) != null && this.kx == dVar.o() && this.f3210e == this.ia.kk()) {
            this.kx = ce.p(this.iw, this.kx);
            int p = ce.p(this.iw);
            if (this.f3210e < p) {
                this.f3210e = ce.p(this.iw, r0);
            } else {
                this.f3210e = ce.p(this.iw, r1);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.jy
    public void a_(final int i) {
        if (!this.dq) {
            this.by.no();
        }
        this.by.ig();
        com.bytedance.sdk.component.adexpress.d.kk kkVar = this.by;
        if (kkVar instanceof kk) {
            ((kk) kkVar).q();
        }
        if (this.s != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.s.dq(this, com.bytedance.sdk.openadsdk.core.o.dq(i), i);
            } else {
                com.bytedance.sdk.openadsdk.core.le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.7
                    @Override // java.lang.Runnable
                    public void run() {
                        NativeExpressView.this.s.dq(NativeExpressView.this, com.bytedance.sdk.openadsdk.core.o.dq(i), i);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.dq
    public void b_(int i) {
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar == null || !(pVar instanceof ig)) {
            return;
        }
        ((ig) pVar).b_(i);
    }

    public void cd() {
        kx kxVar = this.wn;
        if (kxVar == null || kxVar.mn() == null) {
            return;
        }
        this.wn.s();
    }

    public int d() {
        return 0;
    }

    public void d(int i) {
    }

    public void d(int i, String str) {
        com.bytedance.sdk.openadsdk.core.c W_;
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar == null || !(pVar instanceof kx) || (W_ = ((kx) pVar).W_()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("time", i);
            jSONObject.put("flag", str);
            W_.dq("onVideoPaused", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void d(com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar, com.bytedance.sdk.component.adexpress.d.q qVar) {
        try {
            this.uh = pVar;
            this.gx = qVar;
            if (pVar.ox() != 1) {
                View mn = pVar.mn();
                this.bu = mn;
                if (mn.getParent() != null) {
                    ((ViewGroup) this.bu.getParent()).removeView(this.bu);
                }
                this.n.addView(this.bu);
                ViewGroup.LayoutParams layoutParams = this.bu.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
                }
                if (this.ds != null && (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) && !(pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.s)) {
                    this.ds.dq(((com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) pVar).iw());
                    this.ds.dq(this);
                }
            }
            com.bytedance.sdk.component.adexpress.d.kk kkVar = this.by;
            if (kkVar instanceof kk) {
                ((kk) kkVar).q();
            }
            if (this.h != null && pVar.ox() != 0) {
                this.h.dq(pVar.ox(), qVar.no(), qVar.o());
            }
            dq dqVar = this.s;
            if (dqVar != null) {
                dqVar.dq(this, (float) qVar.p(), (float) qVar.s());
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i;
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.i;
        if (dqVar != null) {
            dqVar.ox(motionEvent.getDeviceId());
            this.i.d(motionEvent.getSource());
            this.i.p(motionEvent.getToolType(0));
        }
        com.bytedance.sdk.openadsdk.core.d.d dVar = this.le;
        if (dVar != null) {
            dVar.ox(motionEvent.getDeviceId());
            this.le.d(motionEvent.getSource());
            this.le.p(motionEvent.getToolType(0));
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.ha = motionEvent.getRawX();
            this.cv = motionEvent.getRawY();
            this.fd = System.currentTimeMillis();
            i = 0;
        } else if (actionMasked == 1) {
            i = 3;
        } else if (actionMasked != 2) {
            i = actionMasked != 3 ? -1 : 4;
        } else {
            this.dc = Math.abs(motionEvent.getX() - this.ha) + this.dc;
            this.jw = Math.abs(motionEvent.getY() - this.cv) + this.jw;
            this.ha = motionEvent.getX();
            this.cv = motionEvent.getY();
            i = (System.currentTimeMillis() - this.fd <= 200 || (this.dc <= 8.0f && this.jw <= 8.0f)) ? 2 : 1;
        }
        SparseArray<p.dq> sparseArray = this.vw;
        if (sparseArray != null) {
            sparseArray.put(motionEvent.getActionMasked(), new p.dq(i, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public long dq() {
        return 0L;
    }

    public void dq(float f2) {
    }

    public void dq(float f2, float f3, float f4, float f5, int i) {
    }

    public void dq(int i) {
    }

    public void dq(int i, int i2, boolean z) {
        int s;
        if (TextUtils.equals(this.mn, "fullscreen_interstitial_ad")) {
            s = com.bytedance.sdk.openadsdk.core.c.dq(this.ia.k(), this.kk) ? 0 : com.bytedance.sdk.openadsdk.core.wp.d().iw(Integer.parseInt(this.wp));
        } else if (!TextUtils.equals(this.mn, "rewarded_video")) {
            return;
        } else {
            s = com.bytedance.sdk.openadsdk.core.wp.d().s(Integer.parseInt(this.wp));
        }
        int i3 = (i2 >= s || z) ? 1 : 0;
        int i4 = i2 <= s ? s - i2 : 0;
        com.bytedance.sdk.component.adexpress.d.d dVar = this.ob;
        if (dVar != null && dVar.d() != null) {
            this.ob.d().dq(String.valueOf(i), i3, i4, z);
        }
        if (this.uh.ox() == 7 || this.uh.ox() == 10) {
            com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
            if (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) {
                ((com.bytedance.sdk.component.adexpress.dynamic.p) pVar).dq(String.valueOf(i), i3, i4, z);
            }
        }
    }

    public void dq(int i, String str) {
    }

    public void dq(MotionEvent motionEvent) {
        View view = this.bu;
        if (view != null) {
            view.dispatchTouchEvent(motionEvent);
        }
    }

    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.r.o oVar;
        com.bytedance.sdk.openadsdk.core.d.dq.ox.dq dqVar;
        int i2;
        com.bytedance.sdk.openadsdk.core.d.dq dqVar2;
        com.bytedance.sdk.openadsdk.core.d.d dVar;
        if (i == -1 || oxVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.r.k kVar = (com.bytedance.sdk.openadsdk.core.r.k) oxVar;
        com.bytedance.sdk.openadsdk.core.d.dq dqVar3 = this.i;
        if (dqVar3 != null) {
            dqVar3.s(getDynamicShowType());
        }
        com.bytedance.sdk.openadsdk.core.d.d dVar2 = this.le;
        if (dVar2 != null) {
            dVar2.s(getDynamicShowType());
        }
        if (i != 1 || (dVar = this.le) == null) {
            oVar = null;
            dqVar = null;
        } else {
            oVar = dVar.d();
            dqVar = (com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.le.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class);
            dqVar.dq(dqVar.s());
        }
        if (i == 2 && (dqVar2 = this.i) != null) {
            oVar = dqVar2.d();
            dqVar = (com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.i.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class);
            dqVar.dq(dqVar.s());
        }
        try {
            Object obj = kVar.dq().get("click_extra_map");
            if (dqVar != null && (obj instanceof Map)) {
                dqVar.dq((Map<String, Object>) obj);
            }
        } catch (JSONException unused) {
        }
        if (oVar == null) {
            oVar = new com.bytedance.sdk.openadsdk.core.r.o();
        }
        com.bytedance.sdk.openadsdk.core.r.o oVar2 = oVar;
        if (this.bl != null) {
            oVar2.d(this);
        }
        oVar2.dq(kVar.dq);
        oVar2.d(kVar.f3469d);
        oVar2.ox(kVar.ox);
        oVar2.p(kVar.p);
        oVar2.dq(kVar.jy);
        oVar2.mn(kVar.cd);
        oVar2.dq(com.bytedance.sdk.openadsdk.core.r.le.p(this.kk, kVar.fw));
        oVar2.d(kVar.fw);
        SparseArray<p.dq> sparseArray = kVar.f3470f;
        if (sparseArray == null || sparseArray.size() == 0) {
            sparseArray = this.vw;
        }
        oVar2.dq(sparseArray);
        JSONObject dq = kVar.dq();
        try {
            boolean z = dq.getBoolean("openPlayableLandingPage");
            i2 = z;
            if (!l.s(this.kk)) {
                i2 = z ? 3 : 2;
            }
        } catch (JSONException unused2) {
            i2 = Integer.MIN_VALUE;
        }
        oVar2.ox(dq.optBoolean("is_compliant_download"));
        String optString = dq.optString("uchain_event_name");
        oVar2.ox(optString);
        int optInt = dq.optInt("convertActionType", Integer.MIN_VALUE);
        if (optInt == 1) {
            if (i == 2) {
                com.bytedance.sdk.openadsdk.core.d.dq dqVar4 = this.i;
                if (dqVar4 != null) {
                    dqVar4.ox();
                }
            } else {
                com.bytedance.sdk.openadsdk.core.d.d dVar3 = this.le;
                if (dVar3 != null) {
                    dVar3.ox();
                }
            }
        } else if (optInt == 2) {
            if (i == 2) {
                com.bytedance.sdk.openadsdk.core.d.dq dqVar5 = this.i;
                if (dqVar5 != null) {
                    dqVar5.p();
                }
            } else {
                com.bytedance.sdk.openadsdk.core.d.d dVar4 = this.le;
                if (dVar4 != null) {
                    dVar4.p();
                }
            }
        }
        View view2 = view == null ? this : view;
        String str = kVar.no;
        d(this.mn);
        j jVar = this.kk;
        int y = jVar != null ? jVar.y() : 0;
        switch (i) {
            case 1:
                View view3 = view2;
                int i3 = y;
                int i4 = i2;
                FrameLayout frameLayout = this.mp;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0));
                }
                d(view3, kVar, oVar2, i4, str, i3);
                break;
            case 2:
                dq(view2, kVar, oVar2, i2, str, y);
                break;
            case 3:
                ce();
                break;
            case 4:
                FrameLayout frameLayout2 = this.mp;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0));
                }
                c.i(this.kk);
                if (!"embeded_ad".equals(this.mn) || !er() || this.q || !c.i(this.kk)) {
                    d(view2, kVar, oVar2, i2, str, y);
                    break;
                } else {
                    dq(view2, kVar, oVar2, i2, str, y);
                    break;
                }
                break;
            case 5:
                dq(!this.gh);
                break;
            case 6:
                iw();
                break;
            case 7:
                if (!dq(optString)) {
                    com.bytedance.sdk.openadsdk.core.ir.iw.dq(this.iw, this.kk);
                    break;
                }
                break;
            case 8:
                mn();
                break;
            case 9:
                d(this.kk, this.iw, this.mn);
                break;
            case 10:
                dq(this.kk, this.iw, this.mn);
                break;
            case 12:
                ox(this.kk, this.iw, this.mn);
                break;
        }
    }

    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, int i2) {
        if (i == -1 || oxVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.r.k kVar = (com.bytedance.sdk.openadsdk.core.r.k) oxVar;
        com.bytedance.sdk.openadsdk.core.r.o oVar = new com.bytedance.sdk.openadsdk.core.r.o();
        oVar.dq(kVar.f3470f);
        oVar.dq(kVar.dq);
        oVar.d(kVar.f3469d);
        oVar.ox(kVar.ox);
        oVar.p(kVar.p);
        oVar.dq(kVar.jy);
        JSONObject dq = kVar.dq();
        int optInt = dq.optInt("convertActionType", Integer.MIN_VALUE);
        oVar.ox(dq.optBoolean("is_compliant_download"));
        if (optInt == 1) {
            if (i == 2) {
                this.i.ox();
            } else {
                this.le.ox();
            }
        } else if (optInt == 2) {
            if (i == 2) {
                this.i.p();
            } else {
                this.le.p();
            }
        }
        View view2 = view == null ? this : view;
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.i;
        if (dqVar != null) {
            dqVar.s(getDynamicShowType());
        }
        com.bytedance.sdk.openadsdk.core.d.d dVar = this.le;
        if (dVar != null) {
            dVar.s(getDynamicShowType());
        }
        j jVar = this.kk;
        int y = jVar != null ? jVar.y() : 0;
        switch (i) {
            case 1:
                View view3 = view2;
                int i3 = y;
                FrameLayout frameLayout = this.mp;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0));
                }
                dq(view3, i2, kVar, oVar, i3);
                break;
            case 2:
                d(view2, i2, kVar, oVar, y);
                break;
            case 3:
                ce();
                break;
            case 4:
                FrameLayout frameLayout2 = this.mp;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0));
                }
                c.i(this.kk);
                if (!"embeded_ad".equals(this.mn) || !er() || this.q || !c.i(this.kk)) {
                    dq(view2, i2, kVar, oVar, y);
                    break;
                } else {
                    d(view2, i2, kVar, oVar, y);
                    break;
                }
                break;
            case 5:
                dq(!this.gh);
                break;
            case 6:
                iw();
                break;
            case 8:
                mn();
                break;
        }
    }

    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, v vVar) {
        this.bl = vVar;
        dq(view, i, oxVar);
        this.bl = null;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.jy
    public void dq(final com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar, final com.bytedance.sdk.component.adexpress.d.q qVar) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.d(pVar, qVar);
            }
        });
    }

    public void dq(com.bytedance.sdk.openadsdk.core.r.k kVar, Map<String, Object> map) {
        try {
            map.put("live_saas_interaction_type", Integer.valueOf(kVar.dq().optInt("live_saas_param_interaction_type", -1)));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p
    public void dq(CharSequence charSequence, int i, int i2, boolean z) {
        dq(Integer.parseInt(String.valueOf(charSequence)), i, z);
    }

    public void dq(JSONObject jSONObject) {
        boolean kk = com.bytedance.sdk.openadsdk.core.wp.d().kk();
        this.v = kk;
        if (kk && c.p(this.kk)) {
            this.ds = new r(this.kk, jSONObject, this);
        }
    }

    public void dq(boolean z) {
        if (this.uh.ox() == 7) {
            com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
            if (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) {
                ((com.bytedance.sdk.component.adexpress.dynamic.p) pVar).setSoundMute(z);
            }
        }
    }

    public void f() {
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar instanceof ig) {
            ((ig) pVar).ia();
        }
        u();
    }

    public void fw() {
        if (com.bytedance.sdk.openadsdk.core.wp.d().zc() && com.bytedance.sdk.openadsdk.h.mn.dq()) {
            com.bytedance.sdk.component.utils.ia.ox().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.5
                @Override // java.lang.Runnable
                public void run() {
                    NativeExpressView.this.c();
                }
            });
        } else {
            c();
        }
    }

    public long getActualPlayDuration() {
        return 0L;
    }

    public com.bytedance.sdk.openadsdk.core.d.dq getClickCreativeListener() {
        return this.i;
    }

    public com.bytedance.sdk.openadsdk.core.d.d getClickListener() {
        return this.le;
    }

    public int getDynamicShowType() {
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar != null) {
            return pVar.ox();
        }
        return 0;
    }

    public FrameLayout getEasyPlayableLayout() {
        return this.op;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.kx).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.f3210e).intValue();
    }

    public dq getExpressInteractionListener() {
        return this.s;
    }

    public com.bytedance.sdk.openadsdk.core.c getJsObject() {
        kx kxVar = this.wn;
        if (kxVar != null) {
            return kxVar.W_();
        }
        return null;
    }

    public int getRenderEngineCacheType() {
        mn f2;
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (!(pVar instanceof kx) || (f2 = ((kx) pVar).f()) == null) {
            return 0;
        }
        return f2.dq();
    }

    public ViewGroup getVideoContainer() {
        return this.mp;
    }

    public com.bykv.vk.openvk.component.video.api.p.ox getVideoController() {
        return null;
    }

    public SSWebView getWebView() {
        kx kxVar = this.wn;
        if (kxVar == null) {
            return null;
        }
        return kxVar.dq();
    }

    public void gh() {
        try {
            FrameLayout frameLayout = this.mp;
            if (frameLayout == null || frameLayout.getParent() == null) {
                return;
            }
            removeView(this.mp);
        } catch (Throwable unused) {
        }
    }

    public boolean i() {
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        return pVar != null && pVar.ox() == 1;
    }

    public void ia() {
    }

    public void ig() {
        this.r = new FrameLayout(this.iw);
        this.n = new FrameLayout(this.iw);
        this.op = new FrameLayout(this.iw);
        addView(this.r);
        addView(this.n);
        addView(this.op);
        this.nh = new ArrayList();
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar = this.ia;
        if (dVar != null) {
            this.f3210e = dVar.no();
            this.kx = this.ia.ig();
            wp();
            this.wp = this.ia.mn();
        }
        if (!jy()) {
            setBackgroundColor(0);
            setBackgroundResource(R.color.transparent);
            q();
        }
        kx();
        ir();
        com.bytedance.sdk.component.adexpress.d.f fVar = this.vf;
        if (fVar != null) {
            this.wn = (kx) fVar.d();
        }
        if (h()) {
            this.yy = new jy(this);
        }
    }

    public void iw() {
    }

    public void k() {
        r rVar = this.ds;
        if (rVar != null) {
            rVar.p();
        }
    }

    public void kk() {
    }

    public Boolean le() {
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar == null) {
            return null;
        }
        int ox = pVar.ox();
        if (ox != 0) {
            if (ox == 2 || ox == 3) {
                return this.gx != null ? Boolean.valueOf(this.gx.f()) : Boolean.FALSE;
            }
            return null;
        }
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar2 = this.uh;
        if (!(pVar2 instanceof kx)) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.c W_ = ((kx) pVar2).W_();
        return W_ == null ? Boolean.FALSE : Boolean.valueOf(W_.le());
    }

    public void mn() {
        if (h() && TextUtils.equals(this.mn, "embeded_ad")) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar = new com.bytedance.sdk.openadsdk.core.dislike.ox.d(this.kk.ve(), com.bytedance.sdk.openadsdk.core.dislike.d.dq());
            dVar.d("dislike");
            com.bytedance.sdk.openadsdk.core.dislike.dq.dq.dq().dq(this.iw, dVar, "close_success");
        }
    }

    public void mp() {
        ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver;
        try {
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            Iterator<com.bytedance.sdk.component.adexpress.d.o> it = this.nh.iterator();
            while (it.hasNext()) {
                it.next().dq();
            }
            this.ox = null;
            this.p = null;
            this.ia = null;
            this.kk = null;
            this.i = null;
            this.f3211f = null;
            this.le = null;
            this.no = null;
            this.ig = null;
            this.s = null;
            Context context = this.iw;
            if (context == null || (themeStatusBroadcastReceiver = this.er) == null) {
                return;
            }
            context.unregisterReceiver(themeStatusBroadcastReceiver);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d("NativeExpressView", "detach error", th);
        }
    }

    public void no() {
    }

    public void o() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.sdk.component.utils.ig.p("webviewpool", "onAttachedToWindow+++");
        getViewTreeObserver().addOnScrollChangedListener(this.ir);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            com.bytedance.sdk.openadsdk.iw.dq dqVar = this.h;
            if (dqVar != null) {
                dqVar.d(true);
            }
            getViewTreeObserver().removeOnScrollChangedListener(this.ir);
        } catch (Exception unused) {
        }
        com.bytedance.sdk.component.utils.ig.p("webviewpool", "onDetachedFromWindow===");
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        com.bytedance.sdk.component.utils.ig.p("webviewpool", "onFinishTemporaryDetach+++");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        jy jyVar;
        return (!h() || (jyVar = this.yy) == null) ? super.onInterceptTouchEvent(motionEvent) : jyVar.dq(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        com.bytedance.sdk.component.utils.ig.p("webviewpool", "onStartTemporaryDetach===");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        jy jyVar;
        return (!h() || (jyVar = this.yy) == null) ? super.onTouchEvent(motionEvent) : jyVar.d(motionEvent);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (Build.VERSION.SDK_INT < 28) {
            onWindowVisibilityChanged(z ? getVisibility() : 8);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        removeCallbacks(this.ce);
        removeCallbacks(this.f3208c);
        if (i == 0) {
            postDelayed(this.f3208c, 50L);
        } else {
            postDelayed(this.ce, 50L);
        }
    }

    public int ox() {
        return 0;
    }

    public void p() {
    }

    public void p(int i) {
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar == null || !(pVar instanceof ig)) {
            return;
        }
        ((ig) pVar).d(i);
    }

    public void r() {
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (!(pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) || (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.s)) {
            return;
        }
        ((com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) pVar).d();
    }

    public void s() {
    }

    public void s(int i) {
        this.xz.dq(i);
    }

    public void setBackupListener(com.bytedance.sdk.component.adexpress.d.ox oxVar) {
        this.f3211f = oxVar;
        com.bytedance.sdk.component.adexpress.d.iw iwVar = this.l;
        if (iwVar != null) {
            iwVar.dq(oxVar);
        }
    }

    public void setClickCreativeListener(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        this.i = dqVar;
    }

    public void setClickListener(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        this.le = dVar;
    }

    public void setDislike(com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar) {
        BackupView backupView;
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar != null && (pVar instanceof fw) && (backupView = (BackupView) pVar.mn()) != null) {
            backupView.setDislikeInner(dqVar);
        }
        this.ox = dqVar;
    }

    public void setEasyPlayableSender(com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn mnVar) {
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView == null) {
            return;
        }
        expressVideoView.setEasyPlayableEventSender(mnVar);
    }

    public void setExpressInteractionListener(dq dqVar) {
        this.s = dqVar;
    }

    public void setOuterDislike(Dialog dialog) {
        BackupView backupView;
        com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
        if (pVar != null && (pVar instanceof fw) && (backupView = (BackupView) pVar.mn()) != null) {
            backupView.setDislikeOuter(dialog);
        }
        this.p = dialog;
    }

    public void setPauseFromExpressView(boolean z) {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p
    public void setSoundMute(boolean z) {
        this.gh = z;
        com.bytedance.sdk.component.adexpress.d.d dVar = this.ob;
        if (dVar != null && dVar.d() != null) {
            this.ob.d().setSoundMute(z);
        }
        if (this.uh.ox() == 7) {
            com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar = this.uh;
            if (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) {
                ((com.bytedance.sdk.component.adexpress.dynamic.p) pVar).setSoundMute(z);
            }
        }
    }

    public void setTimeUpdate(int i) {
    }

    public void setVideoAdInteractionListener(ox.InterfaceC0004ox interfaceC0004ox) {
        this.ig = interfaceC0004ox;
    }

    public void setVideoAdListener(ox.p pVar) {
        this.no = pVar;
    }
}
