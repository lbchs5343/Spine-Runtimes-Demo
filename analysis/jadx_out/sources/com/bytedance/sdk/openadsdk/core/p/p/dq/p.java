package com.bytedance.sdk.openadsdk.core.p.p.dq;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.openadsdk.core.p.p.s;
import com.bytedance.sdk.openadsdk.core.r.mn;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public abstract class p extends d implements Runnable {
    private final AtomicBoolean dq = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f3385d = new AtomicBoolean(false);
    private final AtomicBoolean ox = new AtomicBoolean(false);
    private final AtomicBoolean p = new AtomicBoolean(false);
    private final AtomicBoolean ig = new AtomicBoolean(false);
    private final AtomicBoolean mp = new AtomicBoolean(false);

    public p(mn.dq dqVar) {
        this.s = dqVar;
    }

    private void dq(com.bytedance.sdk.openadsdk.core.p.p.ox oxVar, int i) {
        com.bytedance.sdk.openadsdk.core.p.p.ox oxVar2;
        com.bytedance.sdk.openadsdk.core.p.p.ox oxVar3;
        if (!this.f3385d.compareAndSet(false, true)) {
            if (i == this.no || oxVar == null) {
                return;
            }
            oxVar.ox();
            return;
        }
        this.no = i;
        if (i == 3) {
            s sVar = this.ia;
            if (sVar != null) {
                sVar.dq(this.kk, this.o);
            }
        } else if (oxVar != null) {
            oxVar.dq();
        }
        if (i == 1 && (oxVar3 = this.mn) != null) {
            oxVar3.ox();
        }
        if (i != 2 || (oxVar2 = this.iw) == null) {
            return;
        }
        oxVar2.ox();
    }

    private long s() {
        mn.dq dqVar = this.s;
        return (dqVar == null || dqVar.iw() <= 0) ? ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT : this.s.iw();
    }

    public void d() {
        ia.d().postDelayed(this, s());
    }

    public abstract void dq();

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void dq(s sVar, int i, String str) {
        this.ia = sVar;
        this.kk = i;
        this.o = str;
        this.ox.set(true);
        this.mp.set(true);
        if (this.p.compareAndSet(false, true)) {
            dq();
        }
        p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void dq(boolean z) {
        this.ig.set(true);
        p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.d
    public void ox() {
        this.mp.set(true);
        p();
    }

    public void p() {
        if (!this.mp.get()) {
            if (this.dq.get() && this.ig.get()) {
                com.bytedance.sdk.openadsdk.core.p.p.ox oxVar = this.mn;
                dq(oxVar, oxVar == null ? 3 : 2);
                return;
            }
            return;
        }
        ia.d().removeCallbacks(this);
        com.bytedance.sdk.openadsdk.core.p.p.ox oxVar2 = this.iw;
        if (oxVar2 != null) {
            dq(oxVar2, 1);
            return;
        }
        if (this.ig.get()) {
            if (this.ox.get()) {
                dq(null, 3);
                return;
            }
            com.bytedance.sdk.openadsdk.core.p.p.ox oxVar3 = this.mn;
            if (oxVar3 != null) {
                dq(oxVar3, 2);
            } else {
                dq(null, 3);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.dq.set(true);
        if (this.p.compareAndSet(false, true)) {
            dq();
        }
    }
}
