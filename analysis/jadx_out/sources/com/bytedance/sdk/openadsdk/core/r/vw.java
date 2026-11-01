package com.bytedance.sdk.openadsdk.core.r;

/* loaded from: classes3.dex */
public class vw {

    /* renamed from: d, reason: collision with root package name */
    private int f3519d;
    private int dq;
    private int ox;

    private int p() {
        return com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), com.bytedance.sdk.openadsdk.core.ir.ce.s(com.bytedance.sdk.openadsdk.core.wp.getContext()));
    }

    public int d() {
        return this.f3519d;
    }

    public void d(int i) {
        if (i > 0 && i < p()) {
            this.f3519d = i;
            return;
        }
        int i2 = this.dq;
        if (i2 == 1) {
            this.f3519d = 90;
        } else if (i2 == 2) {
            this.f3519d = 150;
        }
    }

    public int dq() {
        return this.dq;
    }

    public void dq(int i) {
        if (i != 1 && i != 2) {
            i = 0;
        }
        this.dq = i;
    }

    public int ox() {
        return this.ox;
    }

    public void ox(int i) {
        if (i > 0 && i < p()) {
            this.ox = i;
            return;
        }
        int i2 = this.dq;
        if (i2 == 1) {
            this.ox = 90;
        } else if (i2 == 2) {
            this.ox = 150;
        }
    }
}
