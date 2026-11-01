package com.ss.android.downloadlib.mn;

import java.lang.ref.SoftReference;

/* loaded from: classes.dex */
public class ox<P, R> implements Runnable {

    /* renamed from: d, reason: collision with root package name */
    private R f9243d;
    private P dq;
    private ox<R, ?> iw;
    private int ox;
    private SoftReference<dq<P, R>> p;
    private ox<?, P> s;

    public interface dq<PARAM, RESULT> {
        RESULT dq(PARAM param);
    }

    private ox(int i, dq<P, R> dqVar, P p) {
        this.ox = i;
        this.p = new SoftReference<>(dqVar);
        this.dq = p;
    }

    private R d() {
        return this.f9243d;
    }

    public static <P, R> ox<P, R> dq(dq<P, R> dqVar, P p) {
        return new ox<>(2, dqVar, p);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <NR> ox<R, NR> dq(int i, dq<R, NR> dqVar) {
        ox oxVar = (ox<R, ?>) new ox(i, dqVar, null);
        this.iw = oxVar;
        oxVar.s = this;
        return oxVar;
    }

    public <NR> ox<R, NR> dq(dq<R, NR> dqVar) {
        return dq(0, dqVar);
    }

    public void dq() {
        ox<?, P> oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq();
        } else {
            run();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        ox<?, P> oxVar;
        if (this.ox == 0 && !mp.d()) {
            com.ss.android.downloadlib.ia.dq().d().post(this);
            return;
        }
        if (this.ox == 1 && mp.d()) {
            com.ss.android.downloadlib.s.dq().dq(this);
            return;
        }
        if (this.ox == 2 && mp.d()) {
            com.ss.android.downloadlib.s.dq().d(this);
            return;
        }
        if (this.dq == null && (oxVar = this.s) != null) {
            this.dq = oxVar.d();
        }
        dq<P, R> dqVar = this.p.get();
        if (dqVar == null) {
            return;
        }
        this.f9243d = dqVar.dq(this.dq);
        ox<R, ?> oxVar2 = this.iw;
        if (oxVar2 != null) {
            oxVar2.run();
        }
    }
}
