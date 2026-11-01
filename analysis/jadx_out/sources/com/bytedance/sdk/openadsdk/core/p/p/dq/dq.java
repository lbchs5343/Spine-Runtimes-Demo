package com.bytedance.sdk.openadsdk.core.p.p.dq;

import com.bytedance.sdk.openadsdk.core.p.p.s;
import com.bytedance.sdk.openadsdk.core.r.mn;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public abstract class dq extends d {
    private final AtomicBoolean dq = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f3383d = new AtomicBoolean(false);
    private final AtomicBoolean ox = new AtomicBoolean(false);
    private final AtomicBoolean p = new AtomicBoolean(false);

    public dq(mn.dq dqVar) {
        this.s = dqVar;
    }

    private void dq(com.bytedance.sdk.openadsdk.core.p.p.ox oxVar, int i) {
        if (this.dq.compareAndSet(false, true)) {
            if (i != 3) {
                if (oxVar != null) {
                    oxVar.dq();
                }
            } else {
                s sVar = this.ia;
                if (sVar != null) {
                    sVar.dq(this.kk, this.o);
                }
            }
        }
    }

    public void d() {
        com.bytedance.sdk.openadsdk.core.p.p.ox oxVar;
        if (this.ox.get() && (oxVar = this.mn) != null) {
            dq(oxVar, 2);
            return;
        }
        if (this.p.get()) {
            com.bytedance.sdk.openadsdk.core.p.p.ox oxVar2 = this.iw;
            if (oxVar2 != null) {
                dq(oxVar2, 1);
            } else {
                dq(null, 3);
            }
        }
    }

    public abstract void dq();

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void dq(s sVar, int i, String str) {
        this.ia = sVar;
        this.kk = i;
        this.o = str;
        this.p.set(true);
        d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void dq(boolean z) {
        if (z) {
            this.ox.set(true);
            d();
        } else {
            this.f3383d.set(true);
            dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void ox() {
        this.p.set(true);
        d();
    }
}
