package g;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes3.dex */
public final class gmz implements cpv {

    /* renamed from: a, reason: collision with root package name */
    public int f18430a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f18431b;

    /* renamed from: d, reason: collision with root package name */
    public final deb f18432d;

    /* renamed from: f, reason: collision with root package name */
    public final Inflater f18433f;

    public gmz(deb debVar, Inflater inflater) {
        this.f18432d = debVar;
        this.f18433f = inflater;
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        long j2;
        Inflater inflater = this.f18433f;
        bff.p(clqVar, "sink");
        while (!this.f18431b) {
            try {
                ghg ak = clqVar.ak(1);
                int min = (int) Math.min(8192L, 8192 - ak.f18159f);
                boolean needsInput = inflater.needsInput();
                deb debVar = this.f18432d;
                if (needsInput && !debVar.i()) {
                    ghg ghgVar = debVar.f14037d.f13079a;
                    bff.d(ghgVar);
                    int i = ghgVar.f18159f;
                    int i2 = ghgVar.f18158e;
                    int i3 = i - i2;
                    this.f18430a = i3;
                    inflater.setInput(ghgVar.f18156c, i2, i3);
                }
                int inflate = inflater.inflate(ak.f18156c, ak.f18159f, min);
                int i4 = this.f18430a;
                if (i4 != 0) {
                    int remaining = i4 - inflater.getRemaining();
                    this.f18430a -= remaining;
                    debVar.skip(remaining);
                }
                if (inflate > 0) {
                    ak.f18159f += inflate;
                    j2 = inflate;
                    clqVar.f13080b += j2;
                } else {
                    if (ak.f18158e == ak.f18159f) {
                        clqVar.f13079a = ak.i();
                        ip.d(ak);
                    }
                    j2 = 0;
                }
                if (j2 > 0) {
                    return j2;
                }
                if (inflater.finished() || inflater.needsDictionary()) {
                    return -1L;
                }
                if (debVar.i()) {
                    throw new EOFException("source exhausted prematurely");
                }
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f18431b) {
            return;
        }
        this.f18433f.end();
        this.f18431b = true;
        this.f18432d.close();
    }

    @Override // g.cpv
    public final dme e() {
        return this.f18432d.f14036b.e();
    }
}
