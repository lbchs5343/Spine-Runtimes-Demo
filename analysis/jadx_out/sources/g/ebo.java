package g;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class ebo implements cpv {

    /* renamed from: a, reason: collision with root package name */
    public int f15248a;

    /* renamed from: b, reason: collision with root package name */
    public int f15249b;

    /* renamed from: d, reason: collision with root package name */
    public int f15250d;

    /* renamed from: f, reason: collision with root package name */
    public final dsy f15251f;

    /* renamed from: g, reason: collision with root package name */
    public int f15252g;
    public int h;

    public ebo(dsy dsyVar) {
        bff.p(dsyVar, abn.EXTRA_SOURCE);
        this.f15251f = dsyVar;
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        int i;
        int readInt;
        bff.p(clqVar, "sink");
        do {
            int i2 = this.f15250d;
            dsy dsyVar = this.f15251f;
            if (i2 == 0) {
                dsyVar.skip(this.h);
                this.h = 0;
                if ((this.f15248a & 4) == 0) {
                    i = this.f15249b;
                    int u = erq.u(dsyVar);
                    this.f15250d = u;
                    this.f15252g = u;
                    int readByte = dsyVar.readByte() & 255;
                    this.f15248a = dsyVar.readByte() & 255;
                    Logger logger = gvn.f18815a;
                    if (logger.isLoggable(Level.FINE)) {
                        gei geiVar = aby.f9951b;
                        logger.fine(aby.e(this.f15249b, this.f15252g, readByte, this.f15248a, true));
                    }
                    readInt = dsyVar.readInt() & he.UNDEFINED_ITEM_ID;
                    this.f15249b = readInt;
                    if (readByte != 9) {
                        throw new IOException(readByte + " != TYPE_CONTINUATION");
                    }
                }
            } else {
                long c2 = dsyVar.c(clqVar, Math.min(8192L, i2));
                if (c2 != -1) {
                    this.f15250d -= (int) c2;
                    return c2;
                }
            }
            return -1L;
        } while (readInt == i);
        throw new IOException("TYPE_CONTINUATION streamId changed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // g.cpv
    public final dme e() {
        return this.f15251f.e();
    }
}
