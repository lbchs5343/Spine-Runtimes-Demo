package com.bytedance.sdk.component.ia.d.p.d;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private int f1922d;
    private int dq;

    public dq(int i, int i2, long j) {
        if (i2 < i) {
            throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
        }
        this.dq = i;
        this.f1922d = i2;
    }

    public static dq dq(int i, int i2) {
        return new dq(i, i2, 172800000L);
    }

    public static dq dq(int i, int i2, long j) {
        return new dq(i, i2, j);
    }

    public static dq ox() {
        return new dq(1, 100, 172800000L);
    }

    public int d() {
        return this.f1922d;
    }

    public int dq() {
        return this.dq;
    }
}
