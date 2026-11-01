package com.bytedance.sdk.openadsdk.core.q;

/* loaded from: classes3.dex */
public class s {
    public double p;
    public double dq = 0.0d;

    /* renamed from: d, reason: collision with root package name */
    public double f3423d = 0.0d;
    public double ox = 0.0d;

    public void d() {
        this.f3423d += 1.0d;
    }

    public void dq() {
        this.dq += 1.0d;
    }

    public void dq(double d2) {
        this.p = d2;
    }

    public void ox() {
        this.ox += 1.0d;
    }

    public double p() {
        double d2 = this.dq;
        if (d2 == 0.0d) {
            return -1.0d;
        }
        return this.f3423d / d2;
    }

    public double s() {
        double d2 = this.p;
        if (d2 == 0.0d) {
            return -1.0d;
        }
        return this.f3423d / d2;
    }
}
