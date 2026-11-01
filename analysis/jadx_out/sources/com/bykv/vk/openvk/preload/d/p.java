package com.bykv.vk.openvk.preload.d;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public abstract class p<IN, OUT> {
    private static AtomicLong mn = new AtomicLong();

    /* renamed from: d, reason: collision with root package name */
    IN f582d;
    p dq;
    public long iw;
    public OUT ox;
    com.bykv.vk.openvk.preload.d.d.dq p;
    d s;

    public abstract Object dq(d<OUT> dVar, IN in) throws Throwable;

    public final void dq(d dVar, p pVar, IN in, com.bykv.vk.openvk.preload.d.d.dq dqVar, Object[] objArr) {
        this.s = new mp(dVar);
        this.dq = pVar;
        this.f582d = in;
        this.p = dqVar;
        if (pVar != null) {
            this.iw = pVar.iw;
        } else {
            long andIncrement = mn.getAndIncrement();
            this.iw = andIncrement;
            if (andIncrement < 0) {
                throw new RuntimeException("Pipeline ID use up!");
            }
        }
        dq(objArr);
    }

    public final void dq(Throwable th) {
        com.bykv.vk.openvk.preload.d.d.dq dqVar = this.p;
        if (dqVar == null) {
            return;
        }
        dqVar.d(this.s, this, th);
    }

    public void dq(Object... objArr) {
    }
}
