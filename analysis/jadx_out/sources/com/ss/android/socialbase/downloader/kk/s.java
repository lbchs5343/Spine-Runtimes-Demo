package com.ss.android.socialbase.downloader.kk;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private dq f9435d;
    private dq dq;
    private int ox;
    private int p = 10;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        long f9436d;
        long dq;
        dq ox;
        dq p;

        private dq() {
        }
    }

    private dq dq() {
        dq dqVar;
        int i = this.ox;
        if (i < this.p || (dqVar = this.f9435d) == null) {
            this.ox = i + 1;
            return new dq();
        }
        dq dqVar2 = dqVar.p;
        dqVar.p = null;
        this.f9435d = dqVar2;
        if (dqVar2 != null) {
            dqVar2.ox = null;
        }
        return dqVar;
    }

    private dq dq(long j) {
        dq dqVar = this.dq;
        dq dqVar2 = null;
        while (dqVar != null && dqVar.f9436d > j) {
            dqVar2 = dqVar;
            dqVar = dqVar.ox;
        }
        return (dqVar == null || dqVar2 == null || dqVar == dqVar2 || j - dqVar.f9436d >= dqVar2.f9436d - j) ? dqVar2 : dqVar;
    }

    public long d(long j, long j2) {
        synchronized (this) {
            try {
                dq dqVar = this.dq;
                if (dqVar == null) {
                    return -1L;
                }
                dq dq2 = dq(j);
                if (dq2 == null) {
                    return -1L;
                }
                long j3 = dqVar.dq - dq2.dq;
                long j4 = j2 - dq2.f9436d;
                if (j3 < 0 || j4 <= 0) {
                    return -1L;
                }
                return j3 / j4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean dq(long j, long j2) {
        synchronized (this) {
            try {
                dq dqVar = this.dq;
                if (dqVar != null) {
                    if (j >= dqVar.dq && j2 >= dqVar.f9436d) {
                        dq dqVar2 = dqVar.ox;
                        if (dqVar2 != null && j2 - dqVar2.f9436d < 1000) {
                            dqVar.dq = j;
                            dqVar.f9436d = j2;
                            return true;
                        }
                    }
                    return false;
                }
                dq dq2 = dq();
                dq2.dq = j;
                dq2.f9436d = j2;
                if (dqVar != null) {
                    dq2.ox = dqVar;
                    dqVar.p = dq2;
                }
                this.dq = dq2;
                return true;
            } finally {
            }
        }
    }
}
