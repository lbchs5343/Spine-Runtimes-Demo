package com.bytedance.sdk.openadsdk.core.p.p.dq;

import com.bytedance.sdk.openadsdk.core.p.p.s;
import com.bytedance.sdk.openadsdk.core.r.mn;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ox extends d {
    private final AtomicBoolean dq = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f3384d = new AtomicBoolean(false);
    private final AtomicBoolean ox = new AtomicBoolean(false);
    private final AtomicBoolean p = new AtomicBoolean(false);
    private final AtomicBoolean ig = new AtomicBoolean(false);

    public ox(mn.dq dqVar) {
        this.s = dqVar;
    }

    private void dq(com.bytedance.sdk.openadsdk.core.p.p.ox oxVar, int i) {
        if (!this.dq.compareAndSet(false, true)) {
            if (oxVar != null) {
                oxVar.ox();
                return;
            }
            return;
        }
        this.no = i;
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

    public void dq() {
        com.bytedance.sdk.openadsdk.core.p.p.ox oxVar;
        if (this.p.get() && this.no != 2 && (oxVar = this.mn) != null) {
            dq(oxVar, 2);
            return;
        }
        if (this.ig.get()) {
            com.bytedance.sdk.openadsdk.core.p.p.ox oxVar2 = this.iw;
            if (oxVar2 != null) {
                dq(oxVar2, 1);
            } else if (this.ox.get()) {
                dq(null, 3);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void dq(s sVar, int i, String str) {
        this.ia = sVar;
        this.kk = i;
        this.o = str;
        this.f3384d.set(true);
        this.ig.set(true);
        dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void dq(boolean z) {
        if (z) {
            this.p.set(true);
            dq();
        } else {
            this.ox.set(true);
            dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void ox() {
        this.ig.set(true);
        dq();
    }
}
