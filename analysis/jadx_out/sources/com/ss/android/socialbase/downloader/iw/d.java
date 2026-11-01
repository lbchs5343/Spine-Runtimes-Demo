package com.ss.android.socialbase.downloader.iw;

/* loaded from: classes.dex */
class d implements ox, p, s {

    /* renamed from: d, reason: collision with root package name */
    private final int f9404d;
    private final int dq;
    private dq ia;
    private dq iw;
    private dq kk;
    private dq mn;
    private int no;
    private volatile boolean o;
    private final Object ox = new Object();
    private final Object p = new Object();
    private dq s;

    public d(int i, int i2) {
        i = i < 64 ? 64 : i;
        i2 = i2 < 8192 ? 8192 : i2;
        this.dq = i;
        this.f9404d = i2;
    }

    @Override // com.ss.android.socialbase.downloader.iw.ox
    public dq d() throws f, InterruptedException {
        synchronized (this.ox) {
            try {
                if (this.o) {
                    throw new f("obtain");
                }
                dq dqVar = this.s;
                if (dqVar == null) {
                    int i = this.no;
                    if (i < this.dq) {
                        this.no = i + 1;
                        return new dq(this.f9404d);
                    }
                    do {
                        this.ox.wait();
                        if (this.o) {
                            throw new f("obtain");
                        }
                        dqVar = this.s;
                    } while (dqVar == null);
                }
                this.s = dqVar.p;
                if (dqVar == this.iw) {
                    this.iw = null;
                }
                dqVar.p = null;
                return dqVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.s
    public void d(dq dqVar) {
        synchronized (this.p) {
            try {
                dq dqVar2 = this.ia;
                if (dqVar2 == null) {
                    this.ia = dqVar;
                    this.mn = dqVar;
                    this.p.notify();
                } else {
                    dqVar2.p = dqVar;
                    this.ia = dqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.p
    public dq dq() throws f, InterruptedException {
        dq dqVar;
        dq dqVar2 = this.kk;
        if (dqVar2 != null) {
            this.kk = dqVar2.p;
            dqVar2.p = null;
            return dqVar2;
        }
        synchronized (this.p) {
            try {
                dqVar = this.mn;
                while (dqVar == null) {
                    if (this.o) {
                        throw new f("read");
                    }
                    this.p.wait();
                    dqVar = this.mn;
                }
                this.kk = dqVar.p;
                this.ia = null;
                this.mn = null;
                dqVar.p = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dqVar;
    }

    @Override // com.ss.android.socialbase.downloader.iw.ox
    public void dq(dq dqVar) {
        synchronized (this.ox) {
            try {
                dq dqVar2 = this.iw;
                if (dqVar2 == null) {
                    this.iw = dqVar;
                    this.s = dqVar;
                } else {
                    dqVar2.p = dqVar;
                    this.iw = dqVar;
                }
                this.ox.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void ox() {
        this.o = true;
        synchronized (this.ox) {
            this.ox.notifyAll();
        }
        synchronized (this.p) {
            this.p.notifyAll();
        }
    }
}
