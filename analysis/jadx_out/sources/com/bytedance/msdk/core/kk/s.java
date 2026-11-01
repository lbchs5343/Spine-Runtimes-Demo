package com.bytedance.msdk.core.kk;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private long f954d;
    private int dq;
    private String ox;
    private long p;
    private int s;

    public long d() {
        return this.f954d;
    }

    public void d(int i) {
        this.s = i;
    }

    public void d(long j) {
        this.p = j;
    }

    public int dq() {
        return this.dq;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(long j) {
        this.f954d = j;
    }

    public void dq(s sVar) {
        this.dq = sVar.dq();
        this.f954d = sVar.d();
        this.ox = sVar.ox();
        this.p = sVar.p();
        this.s = sVar.s();
    }

    public void dq(String str) {
        this.ox = str;
    }

    public String ox() {
        return this.ox;
    }

    public long p() {
        return this.p;
    }

    public int s() {
        return this.s;
    }
}
