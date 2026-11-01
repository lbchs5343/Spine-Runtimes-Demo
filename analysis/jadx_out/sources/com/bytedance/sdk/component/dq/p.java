package com.bytedance.sdk.component.dq;

import com.bytedance.component.sdk.annotation.CallSuper;

/* loaded from: classes.dex */
public abstract class p<P, R> extends com.bytedance.sdk.component.dq.d<P, R> {

    /* renamed from: d, reason: collision with root package name */
    private dq f1880d;
    private boolean dq = true;
    private iw ox;

    public interface d {
        p dq();
    }

    public interface dq {
        void dq(Object obj);

        void dq(Throwable th);
    }

    private boolean mn() {
        if (this.dq) {
            return true;
        }
        kk.dq(new IllegalStateException("Jsb async call already finished: " + dq() + ", hashcode: " + hashCode()));
        return false;
    }

    @Override // com.bytedance.sdk.component.dq.d
    public /* bridge */ /* synthetic */ String dq() {
        return super.dq();
    }

    public final void dq(R r) {
        if (mn()) {
            this.f1880d.dq(r);
            s();
        }
    }

    public abstract void dq(P p, iw iwVar) throws Exception;

    public void dq(P p, iw iwVar, dq dqVar) throws Exception {
        this.ox = iwVar;
        this.f1880d = dqVar;
        dq(p, iwVar);
    }

    public final void dq(Throwable th) {
        if (mn()) {
            this.f1880d.dq(th);
            s();
        }
    }

    public void iw() {
        p();
        s();
    }

    public final void ox() {
        dq((Throwable) null);
    }

    public abstract void p();

    @CallSuper
    public void s() {
        this.dq = false;
        this.ox = null;
    }
}
