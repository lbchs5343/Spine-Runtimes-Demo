package com.bytedance.sdk.openadsdk.core.r;

/* loaded from: classes3.dex */
public class fd {

    /* renamed from: d, reason: collision with root package name */
    private int f3440d;
    private int dq;
    private int ox;
    private int p = 1;

    private int iw() {
        return com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext()));
    }

    private int s() {
        return com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), com.bytedance.sdk.openadsdk.core.ir.ce.s(com.bytedance.sdk.openadsdk.core.wp.getContext()));
    }

    public int d() {
        return this.f3440d;
    }

    public void d(int i) {
        if (i <= 0 || i >= iw()) {
            this.f3440d = 16;
        } else {
            this.f3440d = i;
        }
    }

    public int dq() {
        return this.dq;
    }

    public void dq(int i) {
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            this.dq = i;
        } else {
            this.dq = 2;
        }
    }

    public int ox() {
        return this.ox;
    }

    public void ox(int i) {
        if (i > 0 && i < s()) {
            this.ox = i;
            return;
        }
        int i2 = this.dq;
        if (i2 == 3 || i2 == 4) {
            this.ox = 30;
        } else {
            this.ox = 16;
        }
    }

    public int p() {
        return this.p == 2 ? 2 : 1;
    }

    public void p(int i) {
        this.p = i;
    }
}
