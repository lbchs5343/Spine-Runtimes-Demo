package g;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* loaded from: classes3.dex */
public final class dot implements cpv {

    /* renamed from: a, reason: collision with root package name */
    public final Inflater f14545a;

    /* renamed from: b, reason: collision with root package name */
    public final gmz f14546b;

    /* renamed from: d, reason: collision with root package name */
    public final CRC32 f14547d;

    /* renamed from: f, reason: collision with root package name */
    public byte f14548f;

    /* renamed from: g, reason: collision with root package name */
    public final deb f14549g;

    public dot(cpv cpvVar) {
        bff.p(cpvVar, abn.EXTRA_SOURCE);
        deb debVar = new deb(cpvVar);
        this.f14549g = debVar;
        Inflater inflater = new Inflater(true);
        this.f14545a = inflater;
        this.f14546b = new gmz(debVar, inflater);
        this.f14547d = new CRC32();
    }

    public static void h(int i, int i2, String str) {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3)));
        }
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        long j2;
        dot dotVar = this;
        bff.p(clqVar, "sink");
        byte b2 = dotVar.f14548f;
        CRC32 crc32 = dotVar.f14547d;
        deb debVar = dotVar.f14549g;
        if (b2 == 0) {
            debVar.v(10L);
            clq clqVar2 = debVar.f14037d;
            byte an = clqVar2.an(3L);
            boolean z = ((an >> 1) & 1) == 1;
            if (z) {
                dotVar.i(clqVar2, 0L, 10L);
            }
            h(8075, debVar.readShort(), "ID1ID2");
            debVar.skip(8L);
            if (((an >> 2) & 1) == 1) {
                debVar.v(2L);
                if (z) {
                    i(clqVar2, 0L, 2L);
                }
                short readShort = clqVar2.readShort();
                long j3 = ((short) (((readShort & 255) << 8) | ((readShort & 65280) >>> 8))) & 65535;
                debVar.v(j3);
                if (z) {
                    i(clqVar2, 0L, j3);
                }
                debVar.skip(j3);
            }
            if (((an >> 3) & 1) == 1) {
                long j4 = debVar.j((byte) 0, 0L, Long.MAX_VALUE);
                if (j4 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    j2 = 2;
                    i(clqVar2, 0L, j4 + 1);
                } else {
                    j2 = 2;
                }
                debVar.skip(j4 + 1);
            } else {
                j2 = 2;
            }
            if (((an >> 4) & 1) == 1) {
                long j5 = j2;
                long j6 = debVar.j((byte) 0, 0L, Long.MAX_VALUE);
                if (j6 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    j2 = j5;
                    dotVar = this;
                    dotVar.i(clqVar2, 0L, j6 + 1);
                } else {
                    dotVar = this;
                    j2 = j5;
                }
                debVar.skip(j6 + 1);
            } else {
                dotVar = this;
            }
            if (z) {
                debVar.v(j2);
                short readShort2 = clqVar2.readShort();
                h((short) (((readShort2 & 255) << 8) | ((readShort2 & 65280) >>> 8)), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            dotVar.f14548f = (byte) 1;
        }
        if (dotVar.f14548f == 1) {
            long j7 = clqVar.f13080b;
            long c2 = dotVar.f14546b.c(clqVar, 8192L);
            if (c2 != -1) {
                dotVar.i(clqVar, j7, c2);
                return c2;
            }
            dotVar.f14548f = (byte) 2;
        }
        if (dotVar.f14548f == 2) {
            h(debVar.h(), (int) crc32.getValue(), "CRC");
            h(debVar.h(), (int) dotVar.f14545a.getBytesWritten(), "ISIZE");
            dotVar.f14548f = (byte) 3;
            if (!debVar.i()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f14546b.close();
    }

    @Override // g.cpv
    public final dme e() {
        return this.f14549g.f14036b.e();
    }

    public final void i(clq clqVar, long j, long j2) {
        ghg ghgVar = clqVar.f13079a;
        bff.d(ghgVar);
        while (true) {
            int i = ghgVar.f18159f;
            int i2 = ghgVar.f18158e;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            ghgVar = ghgVar.f18157d;
            bff.d(ghgVar);
        }
        while (j2 > 0) {
            int min = (int) Math.min(ghgVar.f18159f - r7, j2);
            this.f14547d.update(ghgVar.f18156c, (int) (ghgVar.f18158e + j), min);
            j2 -= min;
            ghgVar = ghgVar.f18157d;
            bff.d(ghgVar);
            j = 0;
        }
    }
}
