package g;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class dgz implements evq {

    /* renamed from: a, reason: collision with root package name */
    public final Object f14157a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14158b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f14159c;

    public /* synthetic */ dgz(Object obj, int i, Object obj2) {
        this.f14158b = i;
        this.f14159c = obj;
        this.f14157a = obj2;
    }

    @Override // g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        switch (this.f14158b) {
            case 0:
                gfm gfmVar = (gfm) this.f14159c;
                dgz dgzVar = (dgz) this.f14157a;
                gfmVar.l();
                try {
                    dgzVar.close();
                    if (gfmVar.m()) {
                        throw gfmVar.w(null);
                    }
                    return;
                } catch (IOException e2) {
                    if (!gfmVar.m()) {
                        throw e2;
                    }
                    throw gfmVar.w(e2);
                } finally {
                    gfmVar.m();
                }
            default:
                ((OutputStream) this.f14159c).close();
                return;
        }
    }

    @Override // g.evq
    public final dme e() {
        switch (this.f14158b) {
            case 0:
                return (gfm) this.f14159c;
            default:
                return (dme) this.f14157a;
        }
    }

    @Override // g.evq
    public final void f(clq clqVar, long j) {
        switch (this.f14158b) {
            case 0:
                acw.aw(clqVar.f13080b, 0L, j);
                long j2 = j;
                while (true) {
                    long j3 = 0;
                    if (j2 <= 0) {
                        return;
                    }
                    ghg ghgVar = clqVar.f13079a;
                    bff.d(ghgVar);
                    while (true) {
                        if (j3 < 65536) {
                            j3 += ghgVar.f18159f - ghgVar.f18158e;
                            if (j3 >= j2) {
                                j3 = j2;
                            } else {
                                ghgVar = ghgVar.f18157d;
                                bff.d(ghgVar);
                            }
                        }
                    }
                    gfm gfmVar = (gfm) this.f14159c;
                    dgz dgzVar = (dgz) this.f14157a;
                    gfmVar.l();
                    try {
                        try {
                            dgzVar.f(clqVar, j3);
                            if (gfmVar.m()) {
                                throw gfmVar.w(null);
                            }
                            j2 -= j3;
                        } catch (IOException e2) {
                            if (!gfmVar.m()) {
                                throw e2;
                            }
                            throw gfmVar.w(e2);
                        }
                    } catch (Throwable th) {
                        gfmVar.m();
                        throw th;
                    }
                }
            default:
                acw.aw(clqVar.f13080b, 0L, j);
                while (j > 0) {
                    ((dme) this.f14157a)._au();
                    ghg ghgVar2 = clqVar.f13079a;
                    bff.d(ghgVar2);
                    int min = (int) Math.min(j, ghgVar2.f18159f - ghgVar2.f18158e);
                    ((OutputStream) this.f14159c).write(ghgVar2.f18156c, ghgVar2.f18158e, min);
                    int i = ghgVar2.f18158e + min;
                    ghgVar2.f18158e = i;
                    long j4 = min;
                    j -= j4;
                    clqVar.f13080b -= j4;
                    if (i == ghgVar2.f18159f) {
                        clqVar.f13079a = ghgVar2.i();
                        ip.d(ghgVar2);
                    }
                }
                return;
        }
    }

    @Override // g.evq, java.io.Flushable
    public final void flush() {
        switch (this.f14158b) {
            case 0:
                gfm gfmVar = (gfm) this.f14159c;
                dgz dgzVar = (dgz) this.f14157a;
                gfmVar.l();
                try {
                    dgzVar.flush();
                    if (gfmVar.m()) {
                        throw gfmVar.w(null);
                    }
                    return;
                } catch (IOException e2) {
                    if (!gfmVar.m()) {
                        throw e2;
                    }
                    throw gfmVar.w(e2);
                } finally {
                    gfmVar.m();
                }
            default:
                ((OutputStream) this.f14159c).flush();
                return;
        }
    }

    public final String toString() {
        switch (this.f14158b) {
            case 0:
                return "AsyncTimeout.sink(" + ((dgz) this.f14157a) + ')';
            default:
                return "sink(" + ((OutputStream) this.f14159c) + ')';
        }
    }
}
