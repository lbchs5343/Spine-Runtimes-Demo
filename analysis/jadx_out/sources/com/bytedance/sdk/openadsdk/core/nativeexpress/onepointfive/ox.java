package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.e.dq.d.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    WeakReference<ExpressOnePointFiveView> f3255d;
    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox dq;
    int ox;

    public ox(ExpressOnePointFiveView expressOnePointFiveView, int i, com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        super(null);
        this.dq = oxVar;
        this.f3255d = new WeakReference<>(expressOnePointFiveView);
        this.ox = i;
    }

    private boolean iw() {
        try {
            WeakReference<ExpressOnePointFiveView> weakReference = this.f3255d;
            return this.ox == ((weakReference == null || weakReference.get() == null) ? -1 : this.f3255d.get().getCurrentCompletelyVisibleAdPosition());
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
    public void d() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        if (!iw() || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.d();
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
    public void dq() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        if (!iw() || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.dq();
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
    public void dq(int i, int i2) {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        if (!iw() || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.dq(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
    public void dq(long j, long j2) {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        if (!iw() || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.dq(j, j2);
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
    public void ox() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        if (!iw() || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.ox();
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
    public void p() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        if (!iw() || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.p();
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
    public void s() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        if (!iw() || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.s();
    }
}
