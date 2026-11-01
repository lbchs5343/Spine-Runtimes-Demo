package com.bytedance.sdk.openadsdk.core.component.splash.dq;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.fw;
import com.bytedance.sdk.openadsdk.core.le.s;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.ds;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.jw;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public abstract class dq {
    protected long dq = 0;

    /* renamed from: d, reason: collision with root package name */
    protected long f2710d = 0;
    protected AtomicBoolean ox = new AtomicBoolean(false);
    protected AtomicBoolean p = new AtomicBoolean(false);
    protected AtomicBoolean s = new AtomicBoolean(false);

    /* renamed from: com.bytedance.sdk.openadsdk.core.component.splash.dq.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0152dq {
        void dq();

        void dq(iw iwVar);
    }

    public static dq dq() {
        return (com.bytedance.sdk.openadsdk.core.ox.p.dq().n() & 16) == 16 ? new ox() : new p();
    }

    public static boolean dq(j jVar) {
        long u = com.bytedance.sdk.openadsdk.core.ox.p.dq().u();
        long ix = jVar != null ? jVar.ix() : 0L;
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j = ix - ((24 - u) * 3600);
        StringBuilder l = awf.l(ix, "set: ", "  server: ");
        l.append(ix);
        l.append("  cur: ");
        l.append(currentTimeMillis);
        l.append("   required: ");
        l.append(j);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", l.toString());
        return currentTimeMillis >= j && j > 0;
    }

    public static boolean p() {
        try {
            return (com.bytedance.sdk.openadsdk.core.ox.p.dq().ir() & 4) == 4;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean s() {
        return (com.bytedance.sdk.openadsdk.core.ox.p.dq().n() & 2) == 2;
    }

    public abstract void d();

    public void d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar) {
        if (wp.d().d(c.dq(dVar)) && dVar != null && TextUtils.isEmpty(dVar.wp())) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "preLoadSplashAd... ");
            nh nhVar2 = nhVar == null ? new nh() : nhVar.dq();
            nhVar2.ia = System.currentTimeMillis();
            nhVar2.q = no.ia().l();
            dq(dVar, nhVar2);
        }
    }

    public void dq(iw iwVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z) {
        if (s() && !this.ox.get()) {
            this.ox.set(true);
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "cacheRealTimeAdWhenTimeout start");
            dq(new ds(iwVar.p(), iwVar.d(), null), dVar, false);
            if (z) {
                dq(iwVar.p(), iwVar.d(), dVar);
            }
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "cacheRealTimeAdWhenTimeout end");
        }
    }

    public abstract void dq(mn mnVar, String str, InterfaceC0152dq interfaceC0152dq);

    public abstract void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<kk, mn> pVar, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z);

    public void dq(final com.bytedance.sdk.openadsdk.core.r.dq dqVar, final j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (jVar.oh() == null || jVar.oh().size() <= 0) {
            return;
        }
        ji jiVar = jVar.oh().get(0);
        String dq = jiVar.dq();
        int d2 = jiVar.d();
        int ox = jiVar.ox();
        this.dq = System.currentTimeMillis();
        this.f2710d = SystemClock.elapsedRealtime();
        jw ox2 = s.dq().ox().ox();
        if (ox2 != null) {
            ox2.dq(false);
        }
        final boolean z = pa.q(jVar) != null;
        fw.dq(new com.bytedance.sdk.openadsdk.mp.d(dq, jiVar.mn()), d2, ox, new fw.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.ir.fw.dq
            public void dq() {
                com.bytedance.sdk.openadsdk.core.component.splash.kk.dq(dqVar);
                if (z) {
                    com.bytedance.sdk.openadsdk.core.component.splash.kk.dq(dq.this.f2710d, false, false, jVar, -7L, "preLoadImageFailed");
                }
                dq.this.p.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.fw.dq
            public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar2, com.bytedance.sdk.component.iw.no noVar) {
                com.bytedance.sdk.openadsdk.core.component.splash.kk.dq(dqVar);
                if (!z) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, "splash_ad", System.currentTimeMillis() - dq.this.dq);
                }
                dq dqVar2 = dq.this;
                dqVar2.dq = 0L;
                if (z) {
                    com.bytedance.sdk.openadsdk.core.component.splash.kk.dq(dqVar2.f2710d, false, true, jVar, 0L, "preLoadImageSuccess");
                }
                dq.this.p.set(false);
            }
        }, com.bytedance.sdk.openadsdk.h.kk.s(), 4, null, false);
    }

    public abstract void dq(ds dsVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z);

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar) {
        if (this.ox.get()) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "已经存储了一个实时广告");
            return;
        }
        if (this.p.getAndSet(true)) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "已在预加载开屏广告....不再发出");
            return;
        }
        if (wp.d().ig(dVar.mn()) && nhVar != null) {
            nhVar.mn = 2;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "预加载开屏广告....");
        wp.dq().dq(dVar, nhVar, 4, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.1
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                dq.this.p.set(false);
                dVar2.dq(i);
                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                if (!com.bytedance.sdk.openadsdk.core.component.splash.kk.d(dqVar)) {
                    dq.this.p.set(false);
                    return;
                }
                j jVar = dqVar.d().get(0);
                if (!jVar.xo()) {
                    dVar2.dq(-4);
                    com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                    return;
                }
                AtomicBoolean atomicBoolean = dq.this.ox;
                if (atomicBoolean == null || !atomicBoolean.get()) {
                    dq.this.dq(new ds(dqVar, jVar, null), dVar, false);
                    dq.this.dq(dqVar, jVar, dVar);
                }
            }
        });
    }

    public abstract void ox();
}
