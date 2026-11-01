package com.bytedance.embedapplog;

/* loaded from: classes.dex */
abstract class r {

    /* renamed from: d, reason: collision with root package name */
    private int f740d = 0;
    final le dq;
    private boolean ox;
    private volatile boolean p;

    public r(le leVar) {
        this.dq = leVar;
    }

    public abstract long[] d();

    public abstract long dq();

    public void ia() {
        jo.dq("setImmediately, " + p());
        this.p = true;
    }

    public boolean iw() {
        return this.ox;
    }

    public final long mn() {
        boolean z;
        long j;
        long dq = dq();
        long currentTimeMillis = System.currentTimeMillis();
        if (this.p) {
            this.p = false;
            dq = 0;
        }
        if (dq > 1000 + currentTimeMillis) {
            return dq - currentTimeMillis;
        }
        try {
            z = ox();
        } catch (Exception e2) {
            jo.d(e2);
            z = false;
        }
        if (z) {
            this.f740d = 0;
            j = dq() - System.currentTimeMillis();
        } else {
            long[] d2 = d();
            int i = this.f740d;
            this.f740d = i + 1;
            j = d2[i % d2.length];
        }
        jo.p(p() + " worked:" + z + " " + j, null);
        return j;
    }

    public abstract boolean ox();

    public abstract String p();

    public void s() {
        this.ox = true;
    }
}
