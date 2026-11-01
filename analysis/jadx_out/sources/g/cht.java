package g;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* loaded from: classes.dex */
public final class cht implements ffs {

    /* renamed from: a, reason: collision with root package name */
    public final int f12903a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12904b;
    public final fwt h;
    public final long i;
    public final String j;
    public final int k;
    public final long l;

    public cht(fwt fwtVar, String str, int i, int i2, int i3, long j, long j2) {
        this.h = fwtVar;
        this.j = str;
        this.f12903a = i;
        this.f12904b = i2;
        this.k = i3;
        this.i = j;
        this.l = j2;
    }

    @Override // g.ffs
    public final long c() {
        return this.l;
    }

    @Override // g.ffs
    public final long d() {
        return this.i;
    }

    @Override // g.ffs
    public final byte[] e() {
        fwt fwtVar = this.h;
        synchronized (fwtVar) {
            try {
                if (fwtVar.i) {
                    fwt.n(this);
                }
                if (this.k == 8) {
                    try {
                        return gs.an(fwtVar.k, this);
                    } catch (Exception e2) {
                        fwtVar.s(this, e2);
                        return fwtVar.t(this).e();
                    }
                }
                ByteBuffer byteBuffer = fwtVar.k;
                int i = this.f12904b;
                byte[] bArr = new byte[(int) this.l];
                byteBuffer.position(i);
                byteBuffer.get(bArr);
                return bArr;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.ffs
    public final boolean f() {
        return true;
    }

    @Override // g.ffs
    public final InputStream g() {
        InputStream inflaterInputStream;
        fwt fwtVar = this.h;
        synchronized (fwtVar) {
            try {
                if (fwtVar.i) {
                    fwt.n(this);
                }
                if (this.k == 8) {
                    try {
                        ByteBuffer byteBuffer = fwtVar.k;
                        int i = this.f12904b;
                        int i2 = (int) this.i;
                        byteBuffer.position(i);
                        ByteBuffer slice = byteBuffer.slice();
                        slice.limit(i2);
                        inflaterInputStream = new InflaterInputStream(new fvc(slice), new Inflater(true), 4096);
                    } catch (Exception e2) {
                        fwtVar.s(this, e2);
                        return fwtVar.t(this).g();
                    }
                } else {
                    ByteBuffer byteBuffer2 = fwtVar.k;
                    int i3 = this.f12904b;
                    int i4 = (int) this.l;
                    byteBuffer2.position(i3);
                    ByteBuffer slice2 = byteBuffer2.slice();
                    slice2.limit(i4);
                    inflaterInputStream = new fvc(slice2);
                }
                if (!fwtVar.m) {
                    return inflaterInputStream;
                }
                return new cwf(this.l, inflaterInputStream);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.ffs
    public final String getName() {
        return this.j;
    }

    @Override // g.ffs
    public final boolean isDirectory() {
        return this.j.endsWith("/");
    }

    public final String toString() {
        return this.h.j.getName() + ':' + this.j;
    }
}
