package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class deb implements dsy {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14035a;

    /* renamed from: b, reason: collision with root package name */
    public final cpv f14036b;

    /* renamed from: d, reason: collision with root package name */
    public final clq f14037d;

    public deb(cpv cpvVar) {
        bff.p(cpvVar, abn.EXTRA_SOURCE);
        this.f14036b = cpvVar;
        this.f14037d = new clq();
    }

    @Override // g.dsy
    public final String ad(Charset charset) {
        cpv cpvVar = this.f14036b;
        clq clqVar = this.f14037d;
        clqVar.ae(cpvVar);
        return clqVar.n(clqVar.f13080b, charset);
    }

    @Override // g.dsy
    public final long ah(clq clqVar) {
        clq clqVar2;
        long j = 0;
        while (true) {
            cpv cpvVar = this.f14036b;
            clqVar2 = this.f14037d;
            if (cpvVar.c(clqVar2, 8192L) == -1) {
                break;
            }
            long ao = clqVar2.ao();
            if (ao > 0) {
                j += ao;
                clqVar.f(clqVar2, ao);
            }
        }
        long j2 = clqVar2.f13080b;
        if (j2 <= 0) {
            return j;
        }
        long j3 = j + j2;
        clqVar.f(clqVar2, j2);
        return j3;
    }

    @Override // g.dsy
    public final String ai() {
        return s(Long.MAX_VALUE);
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        bff.p(clqVar, "sink");
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        }
        if (this.f14035a) {
            throw new IllegalStateException("closed");
        }
        clq clqVar2 = this.f14037d;
        if (clqVar2.f13080b == 0 && this.f14036b.c(clqVar2, 8192L) == -1) {
            return -1L;
        }
        return clqVar2.c(clqVar, Math.min(j, clqVar2.f13080b));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f14035a) {
            return;
        }
        this.f14035a = true;
        this.f14036b.close();
        this.f14037d.aa();
    }

    @Override // g.cpv
    public final dme e() {
        return this.f14036b.e();
    }

    public final boolean f(long j, gei geiVar) {
        int i;
        bff.p(geiVar, "bytes");
        int d2 = geiVar.d();
        if (this.f14035a) {
            throw new IllegalStateException("closed");
        }
        if (j >= 0 && d2 >= 0 && geiVar.d() >= d2) {
            while (i < d2) {
                long j2 = i + j;
                i = (k(1 + j2) && this.f14037d.an(j2) == geiVar.m(i)) ? i + 1 : 0;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        if (r5 == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        g.egh.al(16);
        g.egh.al(16);
        r2 = java.lang.Integer.toString(r9, 16);
        g.bff.e(r2, "toString(this, checkRadix(radix))");
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
    
        throw new java.lang.NumberFormatException("Expected a digit or '-' but was 0x".concat(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ec, code lost:
    
        r1 = r3.f13080b - r14;
        r3.f13080b = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f3, code lost:
    
        if (r15 == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f5, code lost:
    
        r5 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f8, code lost:
    
        if (r14 >= r5) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fc, code lost:
    
        if (r1 == r20) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00fe, code lost:
    
        if (r15 == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0100, code lost:
    
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0105, code lost:
    
        r1 = g.tn.l(r1, " but was 0x");
        r3 = r3.an(r20);
        r5 = g.eg.f15470e;
        r6 = r5[(r3 >> 4) & 15];
        r3 = r5[r3 & 15];
        r4 = new char[2];
        r4[0] = r6;
        r4[r22] = r3;
        r1.append(new java.lang.String(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0134, code lost:
    
        throw new java.lang.NumberFormatException(r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0103, code lost:
    
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x013a, code lost:
    
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x013b, code lost:
    
        if (r15 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013f, code lost:
    
        return -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:?, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00f7, code lost:
    
        r5 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long g() {
        byte b2;
        byte b3;
        clq clqVar;
        clq clqVar2;
        char c2;
        clq clqVar3;
        byte b4;
        v(1L);
        long j = 0;
        long j2 = 0;
        while (true) {
            long j3 = j2 + 1;
            boolean k = k(j3);
            b2 = 57;
            b3 = 48;
            clqVar = this.f14037d;
            if (!k) {
                break;
            }
            byte an = clqVar.an(j2);
            if ((an < 48 || an > 57) && !(j2 == 0 && an == 45)) {
                break;
            }
            j2 = j3;
        }
        if (clqVar.f13080b == 0) {
            throw new EOFException();
        }
        long j4 = -7;
        long j5 = 0;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        loop1: while (true) {
            ghg ghgVar = clqVar.f13079a;
            bff.d(ghgVar);
            byte[] bArr = ghgVar.f18156c;
            int i2 = ghgVar.f18158e;
            long j6 = j;
            int i3 = ghgVar.f18159f;
            while (i2 < i3) {
                c2 = 1;
                b4 = bArr[i2];
                if (b4 >= b3 && b4 <= b2) {
                    int i4 = 48 - b4;
                    if (j5 < -922337203685477580L) {
                        break loop1;
                    }
                    clqVar2 = clqVar;
                    if (j5 == -922337203685477580L && i4 < j4) {
                        break loop1;
                    }
                    j5 = (j5 * 10) + i4;
                } else {
                    clqVar2 = clqVar;
                    if (b4 != 45 || i != 0) {
                        z2 = true;
                        break;
                    }
                    j4--;
                    z = true;
                }
                i2++;
                i++;
                clqVar = clqVar2;
                b2 = 57;
                b3 = 48;
            }
            clqVar2 = clqVar;
            c2 = 1;
            if (i2 == i3) {
                clqVar3 = clqVar2;
                clqVar3.f13079a = ghgVar.i();
                ip.d(ghgVar);
            } else {
                clqVar3 = clqVar2;
                ghgVar.f18158e = i2;
            }
            if (z2 || clqVar3.f13079a == null) {
                break;
            }
            clqVar = clqVar3;
            j = j6;
            b2 = 57;
            b3 = 48;
        }
        clq clqVar4 = new clq();
        clqVar4.ag(j5);
        clqVar4.al(b4);
        if (!z) {
            clqVar4.readByte();
        }
        throw new NumberFormatException("Number too large: ".concat(clqVar4.x()));
    }

    public final int h() {
        v(4L);
        int readInt = this.f14037d.readInt();
        return ((readInt & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 24) | (((-16777216) & readInt) >>> 24) | ((16711680 & readInt) >>> 8) | ((65280 & readInt) << 8);
    }

    public final boolean i() {
        if (this.f14035a) {
            throw new IllegalStateException("closed");
        }
        clq clqVar = this.f14037d;
        return clqVar.aj() && this.f14036b.c(clqVar, 8192L) == -1;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f14035a;
    }

    public final long j(byte b2, long j, long j2) {
        if (this.f14035a) {
            throw new IllegalStateException("closed");
        }
        if (0 > j2) {
            throw new IllegalArgumentException(("fromIndex=0 toIndex=" + j2).toString());
        }
        long j3 = 0;
        while (j3 < j2) {
            clq clqVar = this.f14037d;
            byte b3 = b2;
            long j4 = j2;
            long ac = clqVar.ac(b3, j3, j4);
            if (ac == -1) {
                long j5 = clqVar.f13080b;
                if (j5 >= j4 || this.f14036b.c(clqVar, 8192L) == -1) {
                    break;
                }
                j3 = Math.max(j3, j5);
                b2 = b3;
                j2 = j4;
            } else {
                return ac;
            }
        }
        return -1L;
    }

    public final boolean k(long j) {
        clq clqVar;
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        }
        if (this.f14035a) {
            throw new IllegalStateException("closed");
        }
        do {
            clqVar = this.f14037d;
            if (clqVar.f13080b >= j) {
                return true;
            }
        } while (this.f14036b.c(clqVar, 8192L) != -1);
        return false;
    }

    @Override // g.dsy
    public final InputStream m() {
        return new wd(this, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        g.egh.al(16);
        g.egh.al(16);
        r1 = java.lang.Integer.toString(r2, 16);
        g.bff.e(r1, "toString(this, checkRadix(radix))");
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0050, code lost:
    
        throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(r1));
     */
    @Override // g.dsy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long q() {
        clq clqVar;
        v(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            boolean k = k(i2);
            clqVar = this.f14037d;
            if (!k) {
                break;
            }
            byte an = clqVar.an(i);
            if ((an < 48 || an > 57) && ((an < 97 || an > 102) && (an < 65 || an > 70))) {
                break;
            }
            i = i2;
        }
        return clqVar.q();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        bff.p(byteBuffer, "sink");
        clq clqVar = this.f14037d;
        if (clqVar.f13080b == 0 && this.f14036b.c(clqVar, 8192L) == -1) {
            return -1;
        }
        return clqVar.read(byteBuffer);
    }

    @Override // g.dsy
    public final byte readByte() {
        v(1L);
        return this.f14037d.readByte();
    }

    @Override // g.dsy
    public final int readInt() {
        v(4L);
        return this.f14037d.readInt();
    }

    @Override // g.dsy
    public final short readShort() {
        v(2L);
        return this.f14037d.readShort();
    }

    @Override // g.dsy
    public final String s(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j).toString());
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long j3 = j((byte) 10, 0L, j2);
        clq clqVar = this.f14037d;
        if (j3 != -1) {
            return bgz.b(clqVar, j3);
        }
        if (j2 < Long.MAX_VALUE && k(j2) && clqVar.an(j2 - 1) == 13 && k(j2 + 1) && clqVar.an(j2) == 10) {
            return bgz.b(clqVar, j2);
        }
        clq clqVar2 = new clq();
        clqVar.i(clqVar2, 0L, Math.min(32, clqVar.f13080b));
        throw new EOFException("\\n not found: limit=" + Math.min(clqVar.f13080b, j) + " content=" + clqVar2.t(clqVar2.f13080b).f() + (char) 8230);
    }

    @Override // g.dsy
    public final void skip(long j) {
        if (this.f14035a) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            clq clqVar = this.f14037d;
            if (clqVar.f13080b == 0 && this.f14036b.c(clqVar, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, clqVar.f13080b);
            clqVar.skip(min);
            j -= min;
        }
    }

    @Override // g.dsy
    public final gei t(long j) {
        v(j);
        return this.f14037d.t(j);
    }

    public final String toString() {
        return "buffer(" + this.f14036b + ')';
    }

    @Override // g.dsy
    public final void v(long j) {
        if (!k(j)) {
            throw new EOFException();
        }
    }

    @Override // g.dsy
    public final int w(hck hckVar) {
        bff.p(hckVar, "options");
        if (this.f14035a) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            clq clqVar = this.f14037d;
            int c2 = bgz.c(clqVar, hckVar, true);
            if (c2 != -2) {
                if (c2 != -1) {
                    clqVar.skip(hckVar.f19218b[c2].d());
                    return c2;
                }
            } else if (this.f14036b.c(clqVar, 8192L) == -1) {
                break;
            }
        }
        return -1;
    }
}
