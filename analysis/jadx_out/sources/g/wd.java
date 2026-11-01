package g;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class wd extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20206a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dsy f20207b;

    public /* synthetic */ wd(dsy dsyVar, int i) {
        this.f20206a = i;
        this.f20207b = dsyVar;
    }

    private final void c() {
    }

    @Override // java.io.InputStream
    public final int available() {
        long min;
        switch (this.f20206a) {
            case 0:
                min = Math.min(((clq) this.f20207b).f13080b, he.UNDEFINED_ITEM_ID);
                break;
            default:
                deb debVar = (deb) this.f20207b;
                if (!debVar.f14035a) {
                    min = Math.min(debVar.f14037d.f13080b, he.UNDEFINED_ITEM_ID);
                    break;
                } else {
                    throw new IOException("closed");
                }
        }
        return (int) min;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f20206a) {
            case 0:
                break;
            default:
                ((deb) this.f20207b).close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        switch (this.f20206a) {
            case 0:
                clq clqVar = (clq) this.f20207b;
                if (clqVar.f13080b > 0) {
                    return clqVar.readByte() & 255;
                }
                return -1;
            default:
                deb debVar = (deb) this.f20207b;
                clq clqVar2 = debVar.f14037d;
                if (debVar.f14035a) {
                    throw new IOException("closed");
                }
                if (clqVar2.f13080b == 0 && debVar.f14036b.c(clqVar2, 8192L) == -1) {
                    return -1;
                }
                return clqVar2.readByte() & 255;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        switch (this.f20206a) {
            case 0:
                bff.p(bArr, "sink");
                return ((clq) this.f20207b).read(bArr, i, i2);
            default:
                bff.p(bArr, "data");
                deb debVar = (deb) this.f20207b;
                clq clqVar = debVar.f14037d;
                if (debVar.f14035a) {
                    throw new IOException("closed");
                }
                acw.aw(bArr.length, i, i2);
                if (clqVar.f13080b == 0 && debVar.f14036b.c(clqVar, 8192L) == -1) {
                    return -1;
                }
                return clqVar.read(bArr, i, i2);
        }
    }

    public final String toString() {
        switch (this.f20206a) {
            case 0:
                return ((clq) this.f20207b) + ".inputStream()";
            default:
                return ((deb) this.f20207b) + ".inputStream()";
        }
    }
}
