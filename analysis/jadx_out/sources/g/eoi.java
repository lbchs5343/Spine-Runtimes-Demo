package g;

import java.io.IOException;
import java.io.InterruptedIOException;

/* loaded from: classes3.dex */
public final class eoi implements cpv {

    /* renamed from: a, reason: collision with root package name */
    public final clq f15894a = new clq();

    /* renamed from: b, reason: collision with root package name */
    public final clq f15895b = new clq();

    /* renamed from: d, reason: collision with root package name */
    public boolean f15896d;

    /* renamed from: f, reason: collision with root package name */
    public final long f15897f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f15898g;
    public final /* synthetic */ btb h;

    public eoi(btb btbVar, long j, boolean z) {
        this.h = btbVar;
        this.f15897f = j;
        this.f15898g = z;
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        Throwable th;
        boolean z;
        long j2;
        bff.p(clqVar, "sink");
        do {
            btb btbVar = this.h;
            synchronized (btbVar) {
                btbVar.f12168b.l();
                try {
                    if (btbVar.t() == null || this.f15898g) {
                        th = null;
                    } else {
                        th = btbVar.f12169c;
                        if (th == null) {
                            amc t = btbVar.t();
                            bff.d(t);
                            th = new gts(t);
                        }
                    }
                    if (this.f15896d) {
                        throw new IOException("stream closed");
                    }
                    clq clqVar2 = this.f15895b;
                    long j3 = clqVar2.f13080b;
                    z = false;
                    if (j3 > 0) {
                        j2 = clqVar2.c(clqVar, Math.min(8192L, j3));
                        long j4 = btbVar.m + j2;
                        btbVar.m = j4;
                        long j5 = j4 - btbVar.f12170d;
                        if (th == null && j5 >= btbVar.k.f20090c.c() / 2) {
                            btbVar.k.ae(btbVar.f12173g, j5);
                            btbVar.f12170d = btbVar.m;
                        }
                    } else {
                        if (!this.f15898g && th == null) {
                            try {
                                btbVar.wait();
                                z = true;
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        }
                        j2 = -1;
                    }
                    btbVar.f12168b.b();
                } catch (Throwable th2) {
                    btbVar.f12168b.b();
                    throw th2;
                }
            }
        } while (z);
        if (j2 != -1) {
            return j2;
        }
        if (th == null) {
            return -1L;
        }
        throw th;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j;
        btb btbVar = this.h;
        synchronized (btbVar) {
            this.f15896d = true;
            clq clqVar = this.f15895b;
            j = clqVar.f13080b;
            clqVar.aa();
            bff.ag(btbVar, "null cannot be cast to non-null type java.lang.Object");
            btbVar.notifyAll();
        }
        if (j > 0) {
            i(j);
        }
        this.h.s();
    }

    @Override // g.cpv
    public final dme e() {
        return this.h.f12168b;
    }

    public final void i(long j) {
        byte[] bArr = erq.f16043c;
        this.h.k.aa(j);
    }
}
