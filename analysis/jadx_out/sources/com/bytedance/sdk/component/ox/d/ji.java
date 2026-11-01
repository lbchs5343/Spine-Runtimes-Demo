package com.bytedance.sdk.component.ox.d;

/* loaded from: classes.dex */
public class ji {

    /* renamed from: d, reason: collision with root package name */
    long f2122d;
    long dq = System.currentTimeMillis();
    long iw;
    long mn;
    long ox;
    long p;
    long s;

    public void d() {
        this.p = System.currentTimeMillis();
    }

    public void d(long j) {
        this.mn = j;
    }

    public void dq() {
        this.ox = System.currentTimeMillis();
    }

    public void dq(long j) {
        this.iw = j;
    }

    public long ia() {
        return this.iw;
    }

    public long iw() {
        return this.p;
    }

    public long kk() {
        return this.mn;
    }

    public long mn() {
        return this.s;
    }

    public void no() {
        this.f2122d = System.currentTimeMillis();
    }

    public long o() {
        return this.f2122d;
    }

    public void ox() {
        this.s = System.currentTimeMillis();
    }

    public long p() {
        return this.dq;
    }

    public long s() {
        return this.ox;
    }

    public String toString() {
        return "RequestHttpTime{requestBuildTs=" + this.dq + ", asyncCallExecTs=" + this.f2122d + ", requestStartExecTs=" + this.ox + ", requestConnectStartTs=" + this.p + ", requestConnectFinishTs=" + this.s + ", reqCallServerStartTs=" + this.iw + ", reqCallServerFinishTs=" + this.mn + '}';
    }
}
