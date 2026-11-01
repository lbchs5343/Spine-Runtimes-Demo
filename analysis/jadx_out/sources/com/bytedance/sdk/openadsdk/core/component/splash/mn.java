package com.bytedance.sdk.openadsdk.core.component.splash;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.ds;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.jw;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;
import g.tn;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn implements e.dq {
    public static AtomicBoolean dq = new AtomicBoolean(false);
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw cd;

    /* renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.p f2727e;

    /* renamed from: f, reason: collision with root package name */
    private long f2728f;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw fw;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia gh;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk i;
    private int ia;
    private long ig;
    private Context iw;
    private long jy;
    private jw k;
    private int kk;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.p kx;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk le;
    private final e mn;
    private long mp;
    private dq no;
    private com.bytedance.sdk.openadsdk.core.component.splash.dq.dq o;
    private com.bytedance.sdk.openadsdk.f.d.ox.d ox;
    private nh p;
    private long q;
    private com.bytedance.sdk.openadsdk.f.d.d.d r;
    private jw wp;

    /* renamed from: d, reason: collision with root package name */
    private int f2726d = 2;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.dq s = null;
    private final AtomicBoolean h = new AtomicBoolean(false);
    private final AtomicBoolean ji = new AtomicBoolean(false);
    private final AtomicBoolean bl = new AtomicBoolean(false);
    private final AtomicBoolean n = new AtomicBoolean(false);
    private final AtomicBoolean op = new AtomicBoolean(false);
    private final AtomicBoolean ir = new AtomicBoolean(false);
    private final AtomicInteger u = new AtomicInteger(0);

    /* renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f2725c = new AtomicBoolean(false);
    private final AtomicBoolean ce = new AtomicBoolean(false);
    private final AtomicBoolean er = new AtomicBoolean(false);
    private final AtomicBoolean wn = new AtomicBoolean(false);
    private final AtomicInteger j = new AtomicInteger(0);
    private boolean nh = false;

    public class dq {

        /* renamed from: d, reason: collision with root package name */
        private final AtomicBoolean f2740d = new AtomicBoolean(false);

        public dq() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar, int i) {
            if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.splash.p.dq) {
                ((com.bytedance.sdk.openadsdk.core.component.splash.p.dq) dVar).dq(i);
            }
        }

        private void dq(com.bytedance.sdk.openadsdk.r.dq.d.dq.dq dqVar, jw jwVar, j jVar, com.bytedance.sdk.openadsdk.f.d.d.d dVar, boolean z, boolean z2) {
            if (dqVar == null || jwVar == null || mn.this.u.get() > 0) {
                return;
            }
            if (mn.this.dq(jVar)) {
                mn mnVar = mn.this;
                ia.dq(z ? mnVar.wp : mnVar.k, 2);
                mn.this.ia();
            }
            mn.this.er.set(z);
            mn.this.u.set(1);
            long currentTimeMillis = System.currentTimeMillis();
            dq(dVar, 1);
            dqVar.dq(dVar);
            mn.this.u.set(2);
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "onSplashLoadSuccess() 媒体处理完成");
            jwVar.fw(System.currentTimeMillis() - currentTimeMillis);
            if (z2) {
                ia.dq(mn.this.iw, jwVar, jVar, z, currentTimeMillis);
            }
        }

        private void p(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
            if (mnVar == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    if (mn.this.s != null) {
                        mn.this.s.dq(mnVar.o(), new com.bytedance.sdk.openadsdk.f.d.s(mnVar.p(), mnVar.iw()));
                        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "onSplashRenderFail回调 true " + mnVar.p());
                    }
                }
            });
            mn.this.ox();
        }

        public void d() {
            if (this.f2740d.get()) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "触发 buffer_time超时 开始给加载成功回调以及开始渲染");
            mn.this.mn();
        }

        public void d(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
            if (mnVar == null) {
                return;
            }
            mn.this.ia();
            if (this.f2740d.get()) {
                return;
            }
            this.f2740d.set(true);
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.dq.3
                @Override // java.lang.Runnable
                public void run() {
                    if (mn.this.s != null) {
                        if (mn.this.u.get() > 0) {
                            mn.this.s.dq(null, new com.bytedance.sdk.openadsdk.f.d.s(1, "load splash material fail"));
                        } else {
                            mn.this.s.dq(new com.bytedance.sdk.openadsdk.f.d.s(mnVar.p(), mnVar.iw()));
                        }
                    }
                }
            });
            mn.this.ox();
            com.bytedance.sdk.openadsdk.core.iw.dq.p("Splash_FullLink", "onSplashLoadFail 素材加载加载失败 code: " + mnVar.p());
            ia.dq(mnVar.kk(), mn.this.dq(mnVar.kk()), mn.this.ox, mnVar);
        }

        public void dq() {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "onTimeOut start");
            mn.this.h.set(true);
            if (this.f2740d.get()) {
                return;
            }
            this.f2740d.set(true);
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "开屏超时");
            if (mn.this.s != null) {
                if (mn.this.u.get() > 0) {
                    mn.this.s.dq(null, new com.bytedance.sdk.openadsdk.f.d.s(3, "load success but render fail"));
                } else {
                    mn.this.s.dq(new com.bytedance.sdk.openadsdk.f.d.s(23, "load splash time out"));
                }
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "回调开屏超时 true");
                mn.this.ox();
            }
            boolean z = mn.this.nh;
            mn mnVar = mn.this;
            ia.dq(z, mnVar.dq(mnVar.nh), mn.this.ox, new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn(23, "load splash time out", mn.this.nh));
            boolean z2 = mn.this.nh;
            mn mnVar2 = mn.this;
            ia.dq(z2, mnVar2.dq(mnVar2.nh), mn.this.ox);
        }

        public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar) {
            if (this.f2740d.get() || iaVar == null) {
                return;
            }
            jw jwVar = iaVar.ig() ? mn.this.wp : mn.this.k;
            if (jwVar != null) {
                jwVar.iw(iaVar.dq());
                jwVar.cd(iaVar.jy());
                jwVar.i(System.currentTimeMillis() - jwVar.wp());
            }
            dq(mn.this.s, jwVar, iaVar.d(), iaVar.mp(), iaVar.ig(), iaVar.f());
        }

        public void dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk kkVar) {
            mn.this.ia();
            if (this.f2740d.get()) {
                return;
            }
            this.f2740d.set(true);
            boolean z = kkVar != null && kkVar.ox();
            mn.this.dq(kkVar);
            mn mnVar = mn.this;
            mnVar.dq(z, z ? mnVar.wp : mnVar.k);
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.dq.4
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk kkVar2;
                    if (mn.this.s == null || (kkVar2 = kkVar) == null) {
                        return;
                    }
                    dq.this.dq(kkVar2.dq(), 2);
                    mn.this.s.d(kkVar.dq());
                }
            });
        }

        public void dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
            if (mnVar == null) {
                return;
            }
            mn.this.ia();
            if (this.f2740d.get()) {
                return;
            }
            this.f2740d.set(true);
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.dq.2
                @Override // java.lang.Runnable
                public void run() {
                    if (mn.this.s != null) {
                        if (mnVar.p() == 22) {
                            mnVar.d(1);
                        }
                        mn.this.s.dq(new com.bytedance.sdk.openadsdk.f.d.s(mnVar.p(), mnVar.iw()));
                        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "onSplashLoadFail 回调");
                    }
                }
            });
            mn.this.ox();
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "onLoadSplashAdFail回调 广告获取失败");
            ia.dq(mnVar.kk(), mn.this.dq(mnVar.kk()), mn.this.ox, mnVar);
        }

        public void ox() {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "触发渲染超时 onRenderTimeOut ");
            if (this.f2740d.get()) {
                return;
            }
            this.f2740d.set(true);
            if (mn.this.u.get() > 0) {
                mn.this.s.dq(mn.this.r, new com.bytedance.sdk.openadsdk.f.d.s(3, "render time out"));
            } else {
                mn.this.s.dq(new com.bytedance.sdk.openadsdk.f.d.s(1, "load fail, render time out"));
            }
            mn mnVar = mn.this;
            mnVar.dq(mnVar.fw, false, false);
            mn.this.ox();
            boolean z = mn.this.nh;
            mn mnVar2 = mn.this;
            ia.dq(z, mnVar2.dq(mnVar2.nh), mn.this.ox, new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn(23, "load splash time out", mn.this.nh));
            boolean z2 = mn.this.nh;
            mn mnVar3 = mn.this;
            ia.dq(z2, mnVar3.dq(mnVar3.nh), mn.this.ox);
        }

        public void ox(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
            mn.this.ia();
            if (this.f2740d.get()) {
                return;
            }
            this.f2740d.set(true);
            ia.dq(mnVar.kk(), mn.this.dq(mnVar.kk()), mn.this.ox, mnVar);
            p(mnVar);
            ig.p("SplashLoadManager", "渲染失败 code " + mnVar.p() + " msg " + mnVar.iw());
        }

        public boolean p() {
            return this.f2740d.get();
        }
    }

    private mn(Context context) {
        if (context != null) {
            this.iw = context.getApplicationContext();
        } else {
            this.iw = wp.getContext();
        }
        this.mn = new e(Looper.getMainLooper(), this);
        this.no = new dq();
        com.bytedance.sdk.openadsdk.core.no.ia().kk(false);
        no();
    }

    private com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq d(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, final dq dqVar) {
        if (iwVar == null || iaVar == null || dqVar == null) {
            return null;
        }
        return new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq(new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox(this.iw, "splash_ad", iwVar, iaVar, this.ox), new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.3
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p
            public void dq() {
                mn.this.d(iwVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk kkVar) {
                mn.this.s(iwVar.s());
                if (mn.this.er.get()) {
                    if (iwVar.s()) {
                        dqVar.dq(kkVar);
                    }
                } else {
                    if (iwVar.s()) {
                        return;
                    }
                    dqVar.dq(kkVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p
            public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
                dqVar.ox(mnVar);
            }
        }, this.o);
    }

    private nh d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        long currentTimeMillis = System.currentTimeMillis();
        nh nhVar = new nh();
        nhVar.ia = currentTimeMillis;
        nhVar.q = com.bytedance.sdk.openadsdk.core.no.ia().l();
        Object obj = this.s;
        if (obj != null && (obj instanceof com.bytedance.sdk.openadsdk.core.dq.d)) {
            nhVar.kk = ((com.bytedance.sdk.openadsdk.core.dq.d) obj).d();
        }
        return nhVar;
    }

    private void d() {
        this.h.set(false);
        this.ji.set(false);
        this.bl.set(false);
        this.n.set(false);
        this.f2725c.set(false);
        this.ce.set(false);
        this.op.set(false);
        this.ir.set(false);
        this.er.set(false);
        this.wn.set(false);
    }

    private void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, long j) {
        if (iaVar.ig()) {
            if (this.ir.get()) {
                return;
            }
            this.kx.d(j - this.q);
            this.wp.ox(iaVar.mn());
            this.wp.d(iaVar.iw());
            return;
        }
        if (this.op.get()) {
            return;
        }
        this.f2727e.d(j - this.mp);
        this.k.ox(iaVar.mn());
        this.k.d(iaVar.iw());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
        if (iwVar == null || !iwVar.s()) {
            ox();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, dq dqVar) {
        if (iwVar == null || dqVar == null) {
            return;
        }
        j d2 = iwVar.d();
        boolean s = iwVar.s();
        com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq dq2 = dq(iwVar, new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia(d2, s), dqVar);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar = new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d(d2, s);
        dVar.dq(s);
        dVar.dq(iwVar.p());
        dVar.dq(iwVar.dq());
        dVar.dq(iwVar.ox());
        com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.iw dq3 = dq(iwVar, dqVar, dq2.dq(), dVar, elapsedRealtime);
        dq2.dq(dq3);
        ia.ox(s ? this.wp : this.k, System.currentTimeMillis());
        dq3.d();
        int ox = ox(d2);
        if (this.h.get()) {
            return;
        }
        if (dq(d2, dVar.p()) && this.mn != null) {
            if (ox <= 0) {
                ox = 0;
            }
            if (!ox(s)) {
                this.mn.sendEmptyMessageDelayed(6, ox + 100);
            }
        }
        dq(dq2, s, ox);
    }

    private boolean d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
        int p = mnVar.p();
        int s = mnVar.s();
        String c2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().c();
        if (TextUtils.isEmpty(c2)) {
            return false;
        }
        try {
            String optString = new JSONObject(c2).optString(String.valueOf(p));
            if (!TextUtils.isEmpty(optString)) {
                if (optString.contains(String.valueOf(s))) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private boolean d(j jVar) {
        return jVar != null && jVar.ce() == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(j jVar, boolean z) {
        if (jVar == null) {
            return false;
        }
        if (ig() && z && mp()) {
            return false;
        }
        if ((com.bytedance.sdk.openadsdk.core.ox.p.dq().ir() & 1) == 1) {
            return true;
        }
        return kk.d(jVar) && d(jVar) && jVar.cc() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar;
        return (z || this.o == null || (iwVar = this.fw) == null || iwVar.p() == null || this.fw.d() == null) ? false : true;
    }

    public static mn dq(Context context) {
        return new mn(context);
    }

    private com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, final dq dqVar) {
        return new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq(new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox(this.iw, "splash_ad", iwVar, iaVar, this.ox), new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.2
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p
            public void dq() {
                mn.this.d(iwVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk kkVar) {
                mn.this.s(iwVar.s());
                if (mn.this.ox(kkVar.ox())) {
                    com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存渲染成功 需要等待实时广告: ");
                    if (mn.this.ce.get() && !mn.this.f2725c.get()) {
                        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "已经超时走缓存广告");
                        mn.this.f2725c.set(true);
                        dqVar.dq(kkVar);
                    }
                    mn.this.n.set(true);
                    mn.this.le = kkVar;
                    return;
                }
                mn.this.bl.set(true);
                mn.this.i = kkVar;
                if (mn.this.u.get() == 2) {
                    if (!mn.this.ig()) {
                        dqVar.dq(kkVar);
                    } else {
                        if (mn.this.er.get()) {
                            return;
                        }
                        dqVar.dq(kkVar);
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p
            public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
                if (mn.this.ox(mnVar.kk())) {
                    mn.this.n.set(false);
                } else {
                    mn.this.bl.set(false);
                    dqVar.ox(mnVar);
                }
            }
        }, this.o);
    }

    private com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.iw dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, final dq dqVar, final com.bytedance.sdk.openadsdk.f.d.d.d dVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar2, final long j) {
        return new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.iw(dVar2, new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.11
            private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iw;

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
            public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar) {
                com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar2 = this.iw;
                if (iaVar2 != null) {
                    iaVar2.s(true);
                }
                mn.this.dq(iaVar, iwVar, dqVar, dVar, j, false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public void ox(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar) {
                this.iw = iaVar;
                mn.this.dq(iaVar, iwVar, dqVar, dVar, false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
            public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
                mn.this.dq(iwVar, mnVar, dqVar, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j dq(boolean z) {
        if (z) {
            com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar = this.cd;
            if (iwVar == null) {
                return null;
            }
            return iwVar.d();
        }
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar2 = this.fw;
        if (iwVar2 == null) {
            return null;
        }
        return iwVar2.d();
    }

    private void dq(int i) {
        int o = wp.d().o(this.ia);
        if (o >= i || o <= 0 || !ig() || this.mn == null) {
            return;
        }
        int i2 = i - o;
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "buffer time: " + o + "  减去buffer time后超时时间：" + i2);
        this.mn.sendEmptyMessageDelayed(4, (long) i2);
    }

    private void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, long j) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean ig = iaVar.ig();
        if (ig) {
            ia.dq(this.wp, iaVar);
            ia.dq(this.wp, iaVar, j, dq(ig));
            ia.dq(dq(ig), this.wp, iaVar);
            dq(ig, iaVar, currentTimeMillis - this.q);
            com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar2 = this.gh;
            if (iaVar2 != null) {
                iaVar2.s(true);
            }
        } else {
            ia.dq(this.k, iaVar);
            ia.dq(this.k, iaVar, j, dq(ig));
            ia.dq(dq(ig), this.k, iaVar);
            dq(ig, iaVar, currentTimeMillis - this.mp);
        }
        d(iaVar, currentTimeMillis);
        if (this.u.get() <= 0 || this.h.get()) {
            return;
        }
        if (this.er.get()) {
            if (ig) {
                ia.dq(this.iw, this.wp, iaVar.d(), true, currentTimeMillis);
            }
        } else {
            if (ig) {
                return;
            }
            ia.dq(this.iw, this.k, iaVar.d(), false, currentTimeMillis);
        }
    }

    private void dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, final dq dqVar) {
        if (iaVar != null && this.u.get() <= 0) {
            final boolean ig = iaVar.ig();
            final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq d2 = d(iwVar, iaVar, dqVar);
            iaVar.dq(d2.dq());
            if (ox(iaVar.ig())) {
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存素材加载成功，等待实时广告 isCacheAd " + ig);
                this.gh = iaVar;
                this.r = d2.dq();
                this.ji.set(true);
                if (this.wn.get()) {
                    p();
                    return;
                }
                return;
            }
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "不需要等待实时广告 isCacheAd " + ig);
            if (dq()) {
                dqVar.dq(iaVar);
                dq(iwVar, d2, iaVar.iw());
            } else {
                final long currentTimeMillis = System.currentTimeMillis();
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.7
                    @Override // java.lang.Runnable
                    public void run() {
                        ia.p(ig ? mn.this.wp : mn.this.k, currentTimeMillis);
                        dqVar.dq(iaVar);
                        mn.this.dq(iwVar, d2, iaVar.iw());
                    }
                });
            }
        }
    }

    private void dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, final dq dqVar, com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        if (iaVar != null && this.u.get() <= 0) {
            final boolean ig = iaVar.ig();
            if (ox(ig)) {
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存广告: 素材加载成功，需要等待实时广告");
                this.gh = iaVar;
                this.r = dVar;
                this.ji.set(true);
                if (this.wn.get()) {
                    p();
                    return;
                }
                return;
            }
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "实时素材加载成功，不需要等待实时广告, 此时渲染结果: " + this.bl.get());
            iaVar.dq(dVar);
            if (!dq()) {
                final long currentTimeMillis = System.currentTimeMillis();
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.10
                    @Override // java.lang.Runnable
                    public void run() {
                        ia.p(ig ? mn.this.wp : mn.this.k, currentTimeMillis);
                        dqVar.dq(iaVar);
                        if (mn.this.bl.get()) {
                            dqVar.dq(mn.this.i);
                        }
                    }
                });
            } else {
                dqVar.dq(iaVar);
                if (this.bl.get()) {
                    dqVar.dq(this.i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, dq dqVar, com.bytedance.sdk.openadsdk.f.d.d.d dVar, long j, boolean z) {
        if (iaVar == null) {
            return;
        }
        dq(iwVar, iwVar.s(), false);
        if (this.h.get()) {
            return;
        }
        if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.splash.p.dq) {
            ((com.bytedance.sdk.openadsdk.core.component.splash.p.dq) dVar).dq(iaVar, false);
        }
        dq(iaVar, j);
        if (iaVar.ig() && this.ir.get()) {
            return;
        }
        if (iaVar.ig() || !this.op.get()) {
            if (dq(iaVar.d(), iaVar.iw()) || dq(iwVar.d())) {
                ia.dq(iaVar.ig() ? this.wp : this.k, 2);
                iw(iaVar.ig());
            }
            if (z) {
                dq(iaVar, iwVar, dqVar);
            } else {
                dq(iaVar, iwVar, dqVar, dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, dq dqVar, com.bytedance.sdk.openadsdk.f.d.d.d dVar, boolean z) {
        if (this.h.get()) {
            return;
        }
        d(iaVar, System.currentTimeMillis());
        if (iaVar.ig()) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存广告： 素材首包回调");
            this.ir.set(true);
        } else {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "实时广告： 素材首包回调");
            this.op.set(true);
        }
        ia.dq(iaVar.ig() ? this.wp : this.k, 3);
        iw(iaVar.ig());
        if (z) {
            dq(iaVar, iwVar, dqVar);
        } else {
            dq(iaVar, iwVar, dqVar, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
        boolean s = iwVar.s();
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.ig;
        if (s) {
            ia.dq(this.wp);
            this.kx.dq(dq(s).ce());
            this.kx.d(dq(s).dr());
            this.kx.dq(j);
            this.q = currentTimeMillis;
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存加载物料--end 耗时S1： " + j);
            return;
        }
        ia.dq(this.k);
        this.f2727e.dq(dq(s).ce());
        this.f2727e.d(dq(s).dr());
        this.f2727e.dq(j);
        this.mp = currentTimeMillis;
        ia.dq(this.k, iwVar);
        com.bytedance.sdk.openadsdk.core.le.s.dq().ox().dq(this.k);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "实时加载物料--end 耗时S1： " + j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, final dq dqVar) {
        if (iwVar == null || dqVar == null) {
            return;
        }
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        ia.ox(iwVar.s() ? this.wp : this.k, System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar = new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d(iwVar.d(), iwVar.s());
        dVar.dq(iwVar.p());
        dVar.dq(iwVar.s());
        dVar.dq(iwVar.dq());
        dVar.dq(iwVar.ox());
        new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.iw(dVar, new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.8
            private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia s;

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
            public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar) {
                com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar2 = this.s;
                if (iaVar2 != null) {
                    iaVar2.s(true);
                }
                mn.this.dq(iaVar, iwVar, dqVar, (com.bytedance.sdk.openadsdk.f.d.d.d) null, elapsedRealtime, true);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public void ox(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar) {
                this.s = iaVar;
                mn.this.dq(iaVar, iwVar, dqVar, (com.bytedance.sdk.openadsdk.f.d.d.d) null, true);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
            public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
                mn.this.dq(iwVar, mnVar, dqVar, elapsedRealtime);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar, dq dqVar, long j) {
        if (mnVar == null) {
            return;
        }
        boolean kk = mnVar.kk();
        if (ox(kk)) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存广告: 素材加载失败");
            this.ji.set(false);
            if (this.wn.get()) {
                dqVar.d(mnVar);
            }
        } else {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "实时cac广告: 素材加载失败，直接给回调");
            dqVar.d(mnVar);
        }
        dq(iwVar, kk, false);
        int i = mnVar.mn() ? -14 : -7;
        if (!mnVar.mn()) {
            kk.dq(j, false, false, dq(mnVar.kk()), i, mnVar.iw());
        }
        StringBuilder l = tn.l(kk ? "缓存广告" : "实时广告", "加载素材失败 ");
        l.append(mnVar.p());
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", l.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq dqVar, boolean z) {
        if (dqVar == null) {
            return;
        }
        int ox = ox(dq(iwVar.s()));
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "渲染 timeout " + ox);
        if (this.h.get()) {
            return;
        }
        if (dq(iwVar.d(), z) && this.mn != null) {
            if (ox <= 0) {
                ox = 0;
            }
            if (!ox(iwVar.s())) {
                this.mn.sendEmptyMessageDelayed(6, ox + 100);
            }
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "开始渲染 isCache " + iwVar.s());
        dq(dqVar, iwVar.s(), ox);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar, boolean z, boolean z2) {
        if (z) {
            return;
        }
        try {
            if (this.u.get() > 0 && !this.er.get()) {
                com.bytedance.sdk.openadsdk.core.iw.dq.ox("lqmt", "该实时广告已回调媒体");
            } else {
                if (com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.d(this.ox, this.p)) {
                    return;
                }
                if (this.u.get() > 0 || this.no.p()) {
                    this.o.dq(iwVar, this.ox, z2);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk kkVar) {
        if (kkVar == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        boolean ox = kkVar.ox();
        if (ox) {
            ia.dq(dq(ox), this.kx, kkVar);
            this.kx.p(currentTimeMillis - this.ig);
            this.kx.p(this.f2726d);
            this.kx.dq(ox);
            ia.dq(dq(ox), this.kx);
            ia.d(dq(ox), this.kx);
        } else {
            ia.dq(dq(ox), this.f2727e, kkVar);
            this.f2727e.p(currentTimeMillis - this.ig);
            this.f2727e.p(this.f2726d);
            this.f2727e.dq(ox);
            ia.dq(dq(ox), this.f2727e);
            ia.d(dq(ox), this.f2727e);
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "开屏广告渲染--end, 耗时S3： " + (currentTimeMillis - this.jy));
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "渲染成功回调 开屏广告类型： ".concat(ox ? "缓存" : "实时"));
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "加载开屏广告--end，总耗时： " + (currentTimeMillis - this.ig));
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "加载开屏广告--end，getReqId： " + dq(ox).el());
    }

    private void dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq dqVar, boolean z, final int i) {
        p(z);
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.9
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq dqVar2 = dqVar;
                if (dqVar2 == null) {
                    return;
                }
                dqVar2.dq(i);
                dqVar.d();
            }
        });
    }

    private void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, int i) {
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", " 加载开屏广告--begin ");
        this.ig = System.currentTimeMillis();
        this.p = d(dVar);
        this.ox = dVar;
        this.ia = c.dq(dVar);
        this.o = com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.dq();
        int kk = wp.d().kk(this.ia);
        this.f2726d = kk;
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "当前rit位 " + this.ia);
        int iw = wp.d().iw(dVar.mn());
        dq(dVar.mn(), iw, i);
        nh nhVar = this.p;
        long j = i;
        nhVar.o = j;
        nhVar.no = iw;
        nhVar.ig = this.kk;
        ia.dq(dVar, j);
        d();
        dq(dVar, this.p, kk);
    }

    private void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i) {
        if (dVar == null) {
            return;
        }
        ia.dq(this.k, this.wp, nhVar, this.f2726d, i);
        dq(dVar, nhVar, this.no);
    }

    private void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, final dq dqVar) {
        if (dqVar == null) {
            return;
        }
        new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s(new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.s(dVar, nhVar), new com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.1
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
                if (iwVar == null || iwVar.d() == null) {
                    dqVar.dq(new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn(1, "no ad model", false));
                    return;
                }
                j d2 = iwVar.d();
                if (iwVar.s()) {
                    mn.this.j.set(1);
                    mn.this.cd = iwVar;
                    if (!mn.this.ig()) {
                        mn.this.nh = true;
                    }
                } else {
                    mn.this.fw = iwVar;
                    mn.this.nh = false;
                }
                if (mn.this.h.get() || mn.this.no.p() || mn.this.u.get() > 0) {
                    mn.this.dq(iwVar, iwVar.s(), true);
                    return;
                }
                mn.this.dq(iwVar);
                if (mn.this.d(d2, iwVar.s())) {
                    com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "开始并发加载素材 ");
                    mn.this.d(iwVar, dqVar);
                } else {
                    com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "开始串行加载素材 getReqId " + iwVar.d().el());
                    mn.this.dq(iwVar, dqVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
            public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
                if (mn.this.ox(mnVar.kk())) {
                    mn.this.j.set(-1);
                    if (mn.this.wn.get()) {
                        dqVar.dq(mnVar);
                        return;
                    }
                    return;
                }
                if (!mn.this.ig() || !mn.this.dq(mnVar)) {
                    dqVar.dq(mnVar);
                    return;
                }
                mn.this.wn.set(true);
                if (mn.this.j.get() < 0) {
                    dqVar.dq(mnVar);
                } else {
                    mn.this.p();
                }
            }
        }, this.o).dq(this.f2726d);
    }

    private void dq(String str, int i, int i2) {
        int f2 = wp.d().f(str);
        if (f2 == 1) {
            this.kk = i > 0 ? Math.min(i, i2) : Math.max(i2, 500);
        } else if (f2 != 2) {
            this.kk = i > 0 ? Math.max(i, i2) : Math.max(i2, 500);
        } else {
            this.kk = i > 0 ? i : Math.max(i2, 500);
        }
        int currentTimeMillis = (int) (this.kk - (System.currentTimeMillis() - this.p.kk));
        if (currentTimeMillis <= 0) {
            currentTimeMillis = this.kk;
        }
        this.kk = currentTimeMillis;
        StringBuilder z = awf.z(f2, i2, "splashTimeOutControlType = ", "; devTimeOut = ", "; cloudTimeOut = ");
        z.append(i);
        z.append("; realTimeOut = ");
        z.append(this.kk);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", z.toString());
        this.mn.sendEmptyMessageDelayed(2, this.kk);
        dq(this.kk);
    }

    private void dq(boolean z, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, long j) {
        String str = z ? "缓存广告" : "实时广告";
        if (iaVar.iw()) {
            if (iaVar.no()) {
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", str + "： 加载缓存视频素材--end, 耗时S2： " + j);
                return;
            }
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", str + "： 加载网络视频素材--end, 耗时S2： " + j);
            return;
        }
        if (iaVar.mn()) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", str + "： 加载缓存图片素材--end, 耗时S2： " + j);
            return;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", str + "： 加载网络图片素材--end, 耗时S2：" + j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final boolean z, final jw jwVar) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("preloadSplash") { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.6
            @Override // java.lang.Runnable
            public void run() {
                if (mn.this.d(z)) {
                    ig.p("lqmt", "saveNetAd start");
                    mn.this.o();
                } else {
                    ig.p("lqmt", "preLoadSplashAd start");
                    mn.this.ox();
                }
                jw jwVar2 = jwVar;
                boolean z2 = false;
                boolean z3 = jwVar2 != null && jwVar2.c();
                jw jwVar3 = jwVar;
                if (jwVar3 != null && jwVar3.ir()) {
                    z2 = true;
                }
                boolean z4 = z;
                ia.dq(z4, mn.this.dq(z4), mn.this.ox, z3, z2);
            }
        });
    }

    public static boolean dq() {
        return (com.bytedance.sdk.openadsdk.core.ox.p.dq().op() & 256) == 256;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
        return (com.bytedance.sdk.openadsdk.core.ox.p.dq().n() & 1) == 1 && !d(mnVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(j jVar) {
        return (jVar != null ? jVar.fd() : 0) == 4;
    }

    private boolean dq(j jVar, boolean z) {
        return (jVar == null || z || jVar.fd() != 3) ? false : true;
    }

    public static boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        return com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.dq(dVar, new nh()) && (com.bytedance.sdk.openadsdk.core.ox.p.dq().op() & 4) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia() {
        e eVar = this.mn;
        if (eVar != null) {
            eVar.removeMessages(4);
        }
        e eVar2 = this.mn;
        if (eVar2 != null) {
            eVar2.removeMessages(2);
        }
        kk();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ig() {
        return this.f2726d == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "startCallBackWhenBufferTimeout ");
        this.no.dq(this.gh);
        this.ce.set(true);
        if (!this.n.get() || this.f2725c.get()) {
            return;
        }
        this.f2725c.set(true);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "素材加载和渲染并发 buffer_time超时 缓存素材加载成功，渲染成功开始给 onRenderSplashSuccess回调");
        this.no.dq(this.le);
    }

    private void iw(boolean z) {
        if (this.mn != null) {
            if (ig()) {
                if (z) {
                    return;
                } else {
                    this.mn.removeMessages(4);
                }
            }
            this.mn.removeMessages(2);
        }
    }

    private void kk() {
        e eVar = this.mn;
        if (eVar != null) {
            eVar.removeMessages(6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn() {
        if (this.no == null) {
            return;
        }
        if (d(dq(true), true)) {
            AtomicBoolean atomicBoolean = this.ji;
            if (atomicBoolean == null || !atomicBoolean.get()) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "buffer_time超时-并发 缓存素材加载成功，开始给加载成功回调");
            com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar = this.gh;
            if (iaVar != null) {
                iaVar.dq(this.r);
            }
            final long currentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.4
                @Override // java.lang.Runnable
                public void run() {
                    ia.p(mn.this.wp, currentTimeMillis);
                    mn.this.iw();
                }
            });
            return;
        }
        AtomicBoolean atomicBoolean2 = this.ji;
        if (atomicBoolean2 == null || !atomicBoolean2.get()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "buffer_time超时-串行 缓存素材加载成功，开始给加载成功回调以及开始渲染");
        final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.dq d2 = d(this.cd, this.gh, this.no);
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar2 = this.gh;
        if (iaVar2 != null) {
            iaVar2.dq(d2.dq());
        }
        final long currentTimeMillis2 = System.currentTimeMillis();
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.mn.5
            @Override // java.lang.Runnable
            public void run() {
                ia.p(mn.this.wp, currentTimeMillis2);
                mn.this.no.dq(mn.this.gh);
                mn mnVar = mn.this;
                mnVar.dq(mnVar.cd, d2, mn.this.gh.iw());
            }
        });
    }

    private boolean mp() {
        return (com.bytedance.sdk.openadsdk.core.ox.p.dq().n() & 4) == 4;
    }

    private void no() {
        this.k = new jw();
        jw jwVar = new jw();
        this.wp = jwVar;
        ia.dq(this.k, jwVar);
        this.f2727e = new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.p();
        this.kx = new com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.d(this.ox, this.p)) {
            return;
        }
        this.o.dq(new ds(this.fw.p(), this.fw.d(), null), this.ox, true);
    }

    private int ox(j jVar) {
        return Math.max(com.bytedance.sdk.openadsdk.core.ox.p.dq().ce(), (this.kk - ((int) (System.currentTimeMillis() - this.ig))) - (jVar != null ? jVar.rv() : 100));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar = this.o;
        if (dqVar != null) {
            dqVar.d(this.ox, this.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ox(boolean z) {
        return z && ig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.dq(dq(true))) {
            return;
        }
        s();
    }

    private void p(boolean z) {
        if (z) {
            this.f2728f = System.currentTimeMillis();
        } else {
            this.jy = System.currentTimeMillis();
        }
    }

    private void s() {
        e eVar = this.mn;
        if (eVar != null) {
            eVar.removeMessages(4);
        }
        dq dqVar = this.no;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(boolean z) {
        if (z) {
            this.kx.ox(System.currentTimeMillis() - this.f2728f);
        } else {
            this.f2727e.ox(System.currentTimeMillis() - this.jy);
        }
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what == 2) {
            dq dqVar = this.no;
            if (dqVar != null) {
                dqVar.dq();
            }
            e eVar = this.mn;
            if (eVar != null) {
                eVar.removeMessages(2);
            }
        }
        if (message.what == 4) {
            s();
        }
        if (message.what == 6) {
            dq dqVar2 = this.no;
            if (dqVar2 != null) {
                dqVar2.ox();
            }
            kk();
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.dq dqVar, int i) {
        this.s = dqVar;
        dq(dVar, i);
    }
}
