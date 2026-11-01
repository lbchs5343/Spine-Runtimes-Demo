package com.bytedance.msdk.ox.iw.d;

/* loaded from: classes.dex */
public class d implements Runnable {

    /* renamed from: d, reason: collision with root package name */
    private Runnable f1133d;
    private com.bytedance.msdk.core.no.d dq;
    private boolean ox = false;

    public d(com.bytedance.msdk.core.no.d dVar, Runnable runnable) {
        this.dq = dVar;
        this.f1133d = runnable;
    }

    public boolean dq() {
        return this.ox;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.bytedance.msdk.core.no.d dVar = this.dq;
        if (dVar != null && dVar.iw() == 4) {
            this.dq.s().put("serverBidding_timeout", Boolean.TRUE);
        }
        this.ox = true;
        Runnable runnable = this.f1133d;
        if (runnable != null) {
            runnable.run();
        }
    }
}
