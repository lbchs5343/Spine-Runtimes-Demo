package g;

import java.io.InterruptedIOException;

/* loaded from: classes3.dex */
public final class kx implements evq {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19570a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ btb f19571b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19572c;

    /* renamed from: d, reason: collision with root package name */
    public final clq f19573d = new clq();

    public kx(btb btbVar, boolean z) {
        this.f19571b = btbVar;
        this.f19572c = z;
    }

    @Override // g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        btb btbVar = this.f19571b;
        byte[] bArr = erq.f16043c;
        synchronized (btbVar) {
            if (this.f19570a) {
                return;
            }
            boolean z = btbVar.t() == null;
            btb btbVar2 = this.f19571b;
            if (!btbVar2.l.f19572c) {
                if (this.f19573d.f13080b > 0) {
                    while (this.f19573d.f13080b > 0) {
                        g(true);
                    }
                } else if (z) {
                    btbVar2.k.ag(btbVar2.f12173g, true, null, 0L);
                }
            }
            synchronized (this.f19571b) {
                this.f19570a = true;
            }
            this.f19571b.k.flush();
            this.f19571b.s();
        }
    }

    @Override // g.evq
    public final dme e() {
        return this.f19571b.f12171e;
    }

    @Override // g.evq
    public final void f(clq clqVar, long j) {
        byte[] bArr = erq.f16043c;
        clq clqVar2 = this.f19573d;
        clqVar2.f(clqVar, j);
        while (clqVar2.f13080b >= 16384) {
            g(false);
        }
    }

    @Override // g.evq, java.io.Flushable
    public final void flush() {
        btb btbVar = this.f19571b;
        byte[] bArr = erq.f16043c;
        synchronized (btbVar) {
            btbVar.v();
        }
        while (this.f19573d.f13080b > 0) {
            g(false);
            this.f19571b.k.flush();
        }
    }

    /* JADX WARN: Finally extract failed */
    public final void g(boolean z) {
        long min;
        boolean z2;
        btb btbVar = this.f19571b;
        synchronized (btbVar) {
            btbVar.f12171e.l();
            while (btbVar.f12172f >= btbVar.h && !this.f19572c && !this.f19570a && btbVar.t() == null) {
                try {
                    try {
                        btbVar.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    btbVar.f12171e.b();
                    throw th;
                }
            }
            btbVar.f12171e.b();
            btbVar.v();
            min = Math.min(btbVar.h - btbVar.f12172f, this.f19573d.f13080b);
            btbVar.f12172f += min;
            z2 = z && min == this.f19573d.f13080b;
        }
        this.f19571b.f12171e.l();
        try {
            btb btbVar2 = this.f19571b;
            btbVar2.k.ag(btbVar2.f12173g, z2, this.f19573d, min);
        } finally {
            this.f19571b.f12171e.b();
        }
    }
}
