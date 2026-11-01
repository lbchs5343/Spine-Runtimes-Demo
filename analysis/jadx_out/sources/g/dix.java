package g;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class dix implements cpv {

    /* renamed from: a, reason: collision with root package name */
    public final Object f14252a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14253b = 0;

    /* renamed from: d, reason: collision with root package name */
    public final Object f14254d;

    public dix(gfm gfmVar, dix dixVar) {
        this.f14254d = gfmVar;
        this.f14252a = dixVar;
    }

    public dix(InputStream inputStream, dme dmeVar) {
        bff.p(inputStream, "input");
        this.f14254d = inputStream;
        this.f14252a = dmeVar;
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        switch (this.f14253b) {
            case 0:
                bff.p(clqVar, "sink");
                gfm gfmVar = (gfm) this.f14254d;
                dix dixVar = (dix) this.f14252a;
                gfmVar.l();
                try {
                    long c2 = dixVar.c(clqVar, 8192L);
                    if (gfmVar.m()) {
                        throw gfmVar.w(null);
                    }
                    return c2;
                } catch (IOException e2) {
                    if (gfmVar.m()) {
                        throw gfmVar.w(e2);
                    }
                    throw e2;
                } finally {
                    gfmVar.m();
                }
            default:
                bff.p(clqVar, "sink");
                try {
                    ((dme) this.f14252a)._au();
                    ghg ak = clqVar.ak(1);
                    int read = ((InputStream) this.f14254d).read(ak.f18156c, ak.f18159f, (int) Math.min(8192L, 8192 - ak.f18159f));
                    if (read == -1) {
                        if (ak.f18158e == ak.f18159f) {
                            clqVar.f13079a = ak.i();
                            ip.d(ak);
                        }
                        return -1L;
                    }
                    ak.f18159f += read;
                    long j2 = read;
                    clqVar.f13080b += j2;
                    return j2;
                } catch (AssertionError e3) {
                    if (baf.ah(e3)) {
                        throw new IOException(e3);
                    }
                    throw e3;
                }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f14253b) {
            case 0:
                gfm gfmVar = (gfm) this.f14254d;
                dix dixVar = (dix) this.f14252a;
                gfmVar.l();
                try {
                    dixVar.close();
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
                ((InputStream) this.f14254d).close();
                return;
        }
    }

    @Override // g.cpv
    public final dme e() {
        switch (this.f14253b) {
            case 0:
                return (gfm) this.f14254d;
            default:
                return (dme) this.f14252a;
        }
    }

    public final String toString() {
        switch (this.f14253b) {
            case 0:
                return "AsyncTimeout.source(" + ((dix) this.f14252a) + ')';
            default:
                return "source(" + ((InputStream) this.f14254d) + ')';
        }
    }
}
