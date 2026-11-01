package g;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class clq implements dsy, cbs, Cloneable, ByteChannel {

    /* renamed from: a, reason: collision with root package name */
    public ghg f13079a;

    /* renamed from: b, reason: collision with root package name */
    public long f13080b;

    public final void aa() {
        skip(this.f13080b);
    }

    public final void ab(int i) {
        ghg ak = ak(2);
        byte[] bArr = ak.f18156c;
        int i2 = ak.f18159f;
        bArr[i2] = (byte) ((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 1] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        ak.f18159f = i2 + 2;
        this.f13080b += 2;
    }

    public final long ac(byte b2, long j, long j2) {
        ghg ghgVar;
        long j3 = 0;
        if (0 > j || j > j2) {
            throw new IllegalArgumentException(("size=" + this.f13080b + " fromIndex=" + j + " toIndex=" + j2).toString());
        }
        long j4 = this.f13080b;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j == j2 || (ghgVar = this.f13079a) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                ghgVar = ghgVar.f18160g;
                bff.d(ghgVar);
                j4 -= ghgVar.f18159f - ghgVar.f18158e;
            }
            while (j4 < j2) {
                byte[] bArr = ghgVar.f18156c;
                int min = (int) Math.min(ghgVar.f18159f, (ghgVar.f18158e + j2) - j4);
                for (int i = (int) ((ghgVar.f18158e + j) - j4); i < min; i++) {
                    if (bArr[i] == b2) {
                        return (i - ghgVar.f18158e) + j4;
                    }
                }
                j4 += ghgVar.f18159f - ghgVar.f18158e;
                ghgVar = ghgVar.f18157d;
                bff.d(ghgVar);
                j = j4;
            }
            return -1L;
        }
        while (true) {
            long j5 = (ghgVar.f18159f - ghgVar.f18158e) + j3;
            if (j5 > j) {
                break;
            }
            ghgVar = ghgVar.f18157d;
            bff.d(ghgVar);
            j3 = j5;
        }
        while (j3 < j2) {
            byte[] bArr2 = ghgVar.f18156c;
            int min2 = (int) Math.min(ghgVar.f18159f, (ghgVar.f18158e + j2) - j3);
            for (int i2 = (int) ((ghgVar.f18158e + j) - j3); i2 < min2; i2++) {
                if (bArr2[i2] == b2) {
                    return (i2 - ghgVar.f18158e) + j3;
                }
            }
            j3 += ghgVar.f18159f - ghgVar.f18158e;
            ghgVar = ghgVar.f18157d;
            bff.d(ghgVar);
            j = j3;
        }
        return -1L;
    }

    @Override // g.dsy
    public final String ad(Charset charset) {
        return n(this.f13080b, charset);
    }

    public final void ae(cpv cpvVar) {
        bff.p(cpvVar, abn.EXTRA_SOURCE);
        while (cpvVar.c(this, 8192L) != -1) {
        }
    }

    public final void af(int i, byte[] bArr) {
        bff.p(bArr, abn.EXTRA_SOURCE);
        int i2 = 0;
        long j = i;
        acw.aw(bArr.length, 0, j);
        while (i2 < i) {
            ghg ak = ak(1);
            int min = Math.min(i - i2, 8192 - ak.f18159f);
            int i3 = i2 + min;
            fuv.m(bArr, ak.f18159f, ak.f18156c, i2, i3);
            ak.f18159f += min;
            i2 = i3;
        }
        this.f13080b += j;
    }

    public final void ag(long j) {
        boolean z;
        if (j == 0) {
            al(48);
            return;
        }
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                ap("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < C.NANOS_PER_SECOND ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
            i = j < C.MICROS_PER_SECOND ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        ghg ak = ak(i);
        byte[] bArr = ak.f18156c;
        int i2 = ak.f18159f + i;
        while (j != 0) {
            long j2 = 10;
            i2--;
            bArr[i2] = bgz.f11559a[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        ak.f18159f += i;
        this.f13080b += i;
    }

    @Override // g.dsy
    public final long ah(clq clqVar) {
        long j = this.f13080b;
        if (j > 0) {
            clqVar.f(this, j);
        }
        return j;
    }

    @Override // g.dsy
    public final String ai() {
        return s(Long.MAX_VALUE);
    }

    public final boolean aj() {
        return this.f13080b == 0;
    }

    public final ghg ak(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        ghg ghgVar = this.f13079a;
        if (ghgVar == null) {
            ghg e2 = ip.e();
            this.f13079a = e2;
            e2.f18160g = e2;
            e2.f18157d = e2;
            return e2;
        }
        ghg ghgVar2 = ghgVar.f18160g;
        bff.d(ghgVar2);
        if (ghgVar2.f18159f + i <= 8192 && ghgVar2.f18155b) {
            return ghgVar2;
        }
        ghg e3 = ip.e();
        ghgVar2.j(e3);
        return e3;
    }

    public final void al(int i) {
        ghg ak = ak(1);
        byte[] bArr = ak.f18156c;
        int i2 = ak.f18159f;
        ak.f18159f = i2 + 1;
        bArr[i2] = (byte) i;
        this.f13080b++;
    }

    public final void am(int i) {
        String str;
        if (i < 128) {
            al(i);
            return;
        }
        if (i < 2048) {
            ghg ak = ak(2);
            byte[] bArr = ak.f18156c;
            int i2 = ak.f18159f;
            bArr[i2] = (byte) ((i >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
            bArr[i2 + 1] = (byte) ((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            ak.f18159f = i2 + 2;
            this.f13080b += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            al(63);
            return;
        }
        if (i < 65536) {
            ghg ak2 = ak(3);
            byte[] bArr2 = ak2.f18156c;
            int i3 = ak2.f18159f;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            bArr2[i3 + 2] = (byte) ((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            ak2.f18159f = i3 + 3;
            this.f13080b += 3;
            return;
        }
        if (i <= 1114111) {
            ghg ak3 = ak(4);
            byte[] bArr3 = ak3.f18156c;
            int i4 = ak3.f18159f;
            bArr3[i4] = (byte) ((i >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            bArr3[i4 + 3] = (byte) ((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            ak3.f18159f = i4 + 4;
            this.f13080b += 4;
            return;
        }
        StringBuilder sb = new StringBuilder("Unexpected code point: 0x");
        if (i != 0) {
            char[] cArr = eg.f15470e;
            char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
            int i5 = 0;
            while (i5 < 8 && cArr2[i5] == '0') {
                i5++;
            }
            if (i5 < 0) {
                throw new IndexOutOfBoundsException(awf.b(i5, "startIndex: ", ", endIndex: 8, size: 8"));
            }
            if (i5 > 8) {
                throw new IllegalArgumentException(awf.b(i5, "startIndex: ", " > endIndex: 8"));
            }
            str = new String(cArr2, i5, 8 - i5);
        } else {
            str = "0";
        }
        sb.append(str);
        throw new IllegalArgumentException(sb.toString());
    }

    public final byte an(long j) {
        acw.aw(this.f13080b, j, 1L);
        ghg ghgVar = this.f13079a;
        if (ghgVar == null) {
            bff.d(null);
            throw null;
        }
        long j2 = this.f13080b;
        if (j2 - j < j) {
            while (j2 > j) {
                ghgVar = ghgVar.f18160g;
                bff.d(ghgVar);
                j2 -= ghgVar.f18159f - ghgVar.f18158e;
            }
            return ghgVar.f18156c[(int) ((ghgVar.f18158e + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = ghgVar.f18159f;
            int i2 = ghgVar.f18158e;
            long j4 = (i - i2) + j3;
            if (j4 > j) {
                return ghgVar.f18156c[(int) ((i2 + j) - j3)];
            }
            ghgVar = ghgVar.f18157d;
            bff.d(ghgVar);
            j3 = j4;
        }
    }

    public final long ao() {
        long j = this.f13080b;
        if (j == 0) {
            return 0L;
        }
        ghg ghgVar = this.f13079a;
        bff.d(ghgVar);
        ghg ghgVar2 = ghgVar.f18160g;
        bff.d(ghgVar2);
        return (ghgVar2.f18159f >= 8192 || !ghgVar2.f18155b) ? j : j - (r3 - ghgVar2.f18158e);
    }

    public final void ap(String str) {
        bff.p(str, "string");
        y(0, str.length(), str);
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        bff.p(clqVar, "sink");
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        }
        long j2 = this.f13080b;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        clqVar.f(this, j);
        return j;
    }

    public final Object clone() {
        clq clqVar = new clq();
        if (this.f13080b == 0) {
            return clqVar;
        }
        ghg ghgVar = this.f13079a;
        bff.d(ghgVar);
        ghg k = ghgVar.k();
        clqVar.f13079a = k;
        k.f18160g = k;
        k.f18157d = k;
        for (ghg ghgVar2 = ghgVar.f18157d; ghgVar2 != ghgVar; ghgVar2 = ghgVar2.f18157d) {
            ghg ghgVar3 = k.f18160g;
            bff.d(ghgVar3);
            bff.d(ghgVar2);
            ghgVar3.j(ghgVar2.k());
        }
        clqVar.f13080b = this.f13080b;
        return clqVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, g.evq
    public final void close() {
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs d(int i, byte[] bArr) {
        af(i, bArr);
        return this;
    }

    @Override // g.cpv
    public final dme e() {
        return dme.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof clq)) {
            return false;
        }
        long j = this.f13080b;
        clq clqVar = (clq) obj;
        if (j != clqVar.f13080b) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        ghg ghgVar = this.f13079a;
        bff.d(ghgVar);
        ghg ghgVar2 = clqVar.f13079a;
        bff.d(ghgVar2);
        int i = ghgVar.f18158e;
        int i2 = ghgVar2.f18158e;
        long j2 = 0;
        while (j2 < this.f13080b) {
            long min = Math.min(ghgVar.f18159f - i, ghgVar2.f18159f - i2);
            long j3 = 0;
            while (j3 < min) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (ghgVar.f18156c[i] != ghgVar2.f18156c[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == ghgVar.f18159f) {
                ghgVar = ghgVar.f18157d;
                bff.d(ghgVar);
                i = ghgVar.f18158e;
            }
            if (i2 == ghgVar2.f18159f) {
                ghgVar2 = ghgVar2.f18157d;
                bff.d(ghgVar2);
                i2 = ghgVar2.f18158e;
            }
            j2 += min;
        }
        return true;
    }

    @Override // g.evq
    public final void f(clq clqVar, long j) {
        ghg e2;
        bff.p(clqVar, abn.EXTRA_SOURCE);
        if (clqVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        acw.aw(clqVar.f13080b, 0L, j);
        while (j > 0) {
            ghg ghgVar = clqVar.f13079a;
            bff.d(ghgVar);
            int i = ghgVar.f18159f;
            bff.d(clqVar.f13079a);
            int i2 = 0;
            if (j < i - r1.f18158e) {
                ghg ghgVar2 = this.f13079a;
                ghg ghgVar3 = ghgVar2 != null ? ghgVar2.f18160g : null;
                if (ghgVar3 != null && ghgVar3.f18155b) {
                    if ((ghgVar3.f18159f + j) - (ghgVar3.f18154a ? 0 : ghgVar3.f18158e) <= 8192) {
                        ghg ghgVar4 = clqVar.f13079a;
                        bff.d(ghgVar4);
                        ghgVar4.h(ghgVar3, (int) j);
                        clqVar.f13080b -= j;
                        this.f13080b += j;
                        return;
                    }
                }
                ghg ghgVar5 = clqVar.f13079a;
                bff.d(ghgVar5);
                int i3 = (int) j;
                if (i3 <= 0 || i3 > ghgVar5.f18159f - ghgVar5.f18158e) {
                    throw new IllegalArgumentException("byteCount out of range");
                }
                if (i3 >= 1024) {
                    e2 = ghgVar5.k();
                } else {
                    e2 = ip.e();
                    byte[] bArr = ghgVar5.f18156c;
                    byte[] bArr2 = e2.f18156c;
                    int i4 = ghgVar5.f18158e;
                    fuv.m(bArr, 0, bArr2, i4, i4 + i3);
                }
                e2.f18159f = e2.f18158e + i3;
                ghgVar5.f18158e += i3;
                ghg ghgVar6 = ghgVar5.f18160g;
                bff.d(ghgVar6);
                ghgVar6.j(e2);
                clqVar.f13079a = e2;
            }
            ghg ghgVar7 = clqVar.f13079a;
            bff.d(ghgVar7);
            long j2 = ghgVar7.f18159f - ghgVar7.f18158e;
            clqVar.f13079a = ghgVar7.i();
            ghg ghgVar8 = this.f13079a;
            if (ghgVar8 == null) {
                this.f13079a = ghgVar7;
                ghgVar7.f18160g = ghgVar7;
                ghgVar7.f18157d = ghgVar7;
            } else {
                ghg ghgVar9 = ghgVar8.f18160g;
                bff.d(ghgVar9);
                ghgVar9.j(ghgVar7);
                ghg ghgVar10 = ghgVar7.f18160g;
                if (ghgVar10 == ghgVar7) {
                    throw new IllegalStateException("cannot compact");
                }
                bff.d(ghgVar10);
                if (ghgVar10.f18155b) {
                    int i5 = ghgVar7.f18159f - ghgVar7.f18158e;
                    ghg ghgVar11 = ghgVar7.f18160g;
                    bff.d(ghgVar11);
                    int i6 = 8192 - ghgVar11.f18159f;
                    ghg ghgVar12 = ghgVar7.f18160g;
                    bff.d(ghgVar12);
                    if (!ghgVar12.f18154a) {
                        ghg ghgVar13 = ghgVar7.f18160g;
                        bff.d(ghgVar13);
                        i2 = ghgVar13.f18158e;
                    }
                    if (i5 <= i6 + i2) {
                        ghg ghgVar14 = ghgVar7.f18160g;
                        bff.d(ghgVar14);
                        ghgVar7.h(ghgVar14, i5);
                        ghgVar7.i();
                        ip.d(ghgVar7);
                    }
                }
            }
            clqVar.f13080b -= j2;
            this.f13080b += j2;
            j -= j2;
        }
    }

    @Override // g.cbs, g.evq, java.io.Flushable
    public final void flush() {
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs g(gei geiVar) {
        o(geiVar);
        return this;
    }

    @Override // g.cbs
    public final clq h() {
        return this;
    }

    public final int hashCode() {
        ghg ghgVar = this.f13079a;
        if (ghgVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = ghgVar.f18159f;
            for (int i3 = ghgVar.f18158e; i3 < i2; i3++) {
                i = (i * 31) + ghgVar.f18156c[i3];
            }
            ghgVar = ghgVar.f18157d;
            bff.d(ghgVar);
        } while (ghgVar != this.f13079a);
        return i;
    }

    public final void i(clq clqVar, long j, long j2) {
        bff.p(clqVar, "out");
        long j3 = j;
        acw.aw(this.f13080b, j3, j2);
        if (j2 == 0) {
            return;
        }
        clqVar.f13080b += j2;
        ghg ghgVar = this.f13079a;
        while (true) {
            bff.d(ghgVar);
            long j4 = ghgVar.f18159f - ghgVar.f18158e;
            if (j3 < j4) {
                break;
            }
            j3 -= j4;
            ghgVar = ghgVar.f18157d;
        }
        ghg ghgVar2 = ghgVar;
        long j5 = j2;
        while (j5 > 0) {
            bff.d(ghgVar2);
            ghg k = ghgVar2.k();
            int i = k.f18158e + ((int) j3);
            k.f18158e = i;
            k.f18159f = Math.min(i + ((int) j5), k.f18159f);
            ghg ghgVar3 = clqVar.f13079a;
            if (ghgVar3 == null) {
                k.f18160g = k;
                k.f18157d = k;
                clqVar.f13079a = k;
            } else {
                ghg ghgVar4 = ghgVar3.f18160g;
                bff.d(ghgVar4);
                ghgVar4.j(k);
            }
            j5 -= k.f18159f - k.f18158e;
            ghgVar2 = ghgVar2.f18157d;
            j3 = 0;
        }
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs j(String str) {
        ap(str);
        return this;
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs k(long j) {
        u(j);
        return this;
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs l(long j) {
        ag(j);
        return this;
    }

    @Override // g.dsy
    public final InputStream m() {
        return new wd(this, 0);
    }

    public final String n(long j, Charset charset) {
        bff.p(charset, "charset");
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        }
        if (this.f13080b < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        ghg ghgVar = this.f13079a;
        bff.d(ghgVar);
        int i = ghgVar.f18158e;
        if (i + j > ghgVar.f18159f) {
            return new String(z(j), charset);
        }
        int i2 = (int) j;
        String str = new String(ghgVar.f18156c, i, i2, charset);
        int i3 = ghgVar.f18158e + i2;
        ghgVar.f18158e = i3;
        this.f13080b -= j;
        if (i3 == ghgVar.f18159f) {
            this.f13079a = ghgVar.i();
            ip.d(ghgVar);
        }
        return str;
    }

    public final void o(gei geiVar) {
        bff.p(geiVar, "byteString");
        geiVar.e(this, geiVar.d());
    }

    public final gei p(int i) {
        if (i == 0) {
            return gei.n;
        }
        acw.aw(this.f13080b, 0L, i);
        ghg ghgVar = this.f13079a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            bff.d(ghgVar);
            int i5 = ghgVar.f18159f;
            int i6 = ghgVar.f18158e;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            ghgVar = ghgVar.f18157d;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        ghg ghgVar2 = this.f13079a;
        int i7 = 0;
        while (i2 < i) {
            bff.d(ghgVar2);
            bArr[i7] = ghgVar2.f18156c;
            i2 += ghgVar2.f18159f - ghgVar2.f18158e;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = ghgVar2.f18158e;
            ghgVar2.f18154a = true;
            i7++;
            ghgVar2 = ghgVar2.f18157d;
        }
        return new fhs(bArr, iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a4 A[EDGE_INSN: B:40:0x00a4->B:37:0x00a4 BREAK  A[LOOP:0: B:4:0x000e->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009c  */
    @Override // g.dsy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long q() {
        int i;
        if (this.f13080b == 0) {
            throw new EOFException();
        }
        long j = 0;
        int i2 = 0;
        boolean z = false;
        do {
            ghg ghgVar = this.f13079a;
            bff.d(ghgVar);
            byte[] bArr = ghgVar.f18156c;
            int i3 = ghgVar.f18158e;
            int i4 = ghgVar.f18159f;
            while (i3 < i4) {
                byte b2 = bArr[i3];
                if (b2 >= 48 && b2 <= 57) {
                    i = b2 - 48;
                } else if (b2 >= 97 && b2 <= 102) {
                    i = b2 - 87;
                } else if (b2 < 65 || b2 > 70) {
                    z = true;
                    if (i2 == 0) {
                        char[] cArr = eg.f15470e;
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(new String(new char[]{cArr[(b2 >> 4) & 15], cArr[b2 & 15]})));
                    }
                    if (i3 != i4) {
                        this.f13079a = ghgVar.i();
                        ip.d(ghgVar);
                    } else {
                        ghgVar.f18158e = i3;
                    }
                    if (!z) {
                        break;
                    }
                } else {
                    i = b2 - 55;
                }
                if (((-1152921504606846976L) & j) != 0) {
                    clq clqVar = new clq();
                    clqVar.u(j);
                    clqVar.al(b2);
                    throw new NumberFormatException("Number too large: ".concat(clqVar.x()));
                }
                j = (j << 4) | i;
                i3++;
                i2++;
            }
            if (i3 != i4) {
            }
            if (!z) {
            }
        } while (this.f13079a != null);
        this.f13080b -= i2;
        return j;
    }

    public final void r(int i) {
        ghg ak = ak(4);
        byte[] bArr = ak.f18156c;
        int i2 = ak.f18159f;
        bArr[i2] = (byte) ((i >>> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 1] = (byte) ((i >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 2] = (byte) ((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 3] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        ak.f18159f = i2 + 4;
        this.f13080b += 4;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        bff.p(byteBuffer, "sink");
        ghg ghgVar = this.f13079a;
        if (ghgVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), ghgVar.f18159f - ghgVar.f18158e);
        byteBuffer.put(ghgVar.f18156c, ghgVar.f18158e, min);
        int i = ghgVar.f18158e + min;
        ghgVar.f18158e = i;
        this.f13080b -= min;
        if (i == ghgVar.f18159f) {
            this.f13079a = ghgVar.i();
            ip.d(ghgVar);
        }
        return min;
    }

    public final int read(byte[] bArr, int i, int i2) {
        acw.aw(bArr.length, i, i2);
        ghg ghgVar = this.f13079a;
        if (ghgVar == null) {
            return -1;
        }
        int min = Math.min(i2, ghgVar.f18159f - ghgVar.f18158e);
        byte[] bArr2 = ghgVar.f18156c;
        int i3 = ghgVar.f18158e;
        fuv.m(bArr2, i, bArr, i3, i3 + min);
        int i4 = ghgVar.f18158e + min;
        ghgVar.f18158e = i4;
        this.f13080b -= min;
        if (i4 == ghgVar.f18159f) {
            this.f13079a = ghgVar.i();
            ip.d(ghgVar);
        }
        return min;
    }

    @Override // g.dsy
    public final byte readByte() {
        if (this.f13080b == 0) {
            throw new EOFException();
        }
        ghg ghgVar = this.f13079a;
        bff.d(ghgVar);
        int i = ghgVar.f18158e;
        int i2 = ghgVar.f18159f;
        int i3 = i + 1;
        byte b2 = ghgVar.f18156c[i];
        this.f13080b--;
        if (i3 != i2) {
            ghgVar.f18158e = i3;
            return b2;
        }
        this.f13079a = ghgVar.i();
        ip.d(ghgVar);
        return b2;
    }

    @Override // g.dsy
    public final int readInt() {
        if (this.f13080b < 4) {
            throw new EOFException();
        }
        ghg ghgVar = this.f13079a;
        bff.d(ghgVar);
        int i = ghgVar.f18158e;
        int i2 = ghgVar.f18159f;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = ghgVar.f18156c;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.f13080b -= 4;
        if (i5 != i2) {
            ghgVar.f18158e = i5;
            return i6;
        }
        this.f13079a = ghgVar.i();
        ip.d(ghgVar);
        return i6;
    }

    @Override // g.dsy
    public final short readShort() {
        if (this.f13080b < 2) {
            throw new EOFException();
        }
        ghg ghgVar = this.f13079a;
        bff.d(ghgVar);
        int i = ghgVar.f18158e;
        int i2 = ghgVar.f18159f;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = ghgVar.f18156c;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.f13080b -= 2;
        if (i5 == i2) {
            this.f13079a = ghgVar.i();
            ip.d(ghgVar);
        } else {
            ghgVar.f18158e = i5;
        }
        return (short) i6;
    }

    @Override // g.dsy
    public final String s(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j).toString());
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long ac = ac((byte) 10, 0L, j2);
        if (ac != -1) {
            return bgz.b(this, ac);
        }
        if (j2 < this.f13080b && an(j2 - 1) == 13 && an(j2) == 10) {
            return bgz.b(this, j2);
        }
        clq clqVar = new clq();
        i(clqVar, 0L, Math.min(32, this.f13080b));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f13080b, j) + " content=" + clqVar.t(clqVar.f13080b).f() + (char) 8230);
    }

    @Override // g.dsy
    public final void skip(long j) {
        while (j > 0) {
            ghg ghgVar = this.f13079a;
            if (ghgVar == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, ghgVar.f18159f - ghgVar.f18158e);
            long j2 = min;
            this.f13080b -= j2;
            j -= j2;
            int i = ghgVar.f18158e + min;
            ghgVar.f18158e = i;
            if (i == ghgVar.f18159f) {
                this.f13079a = ghgVar.i();
                ip.d(ghgVar);
            }
        }
    }

    @Override // g.dsy
    public final gei t(long j) {
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        }
        if (this.f13080b < j) {
            throw new EOFException();
        }
        if (j < 4096) {
            return new gei(z(j));
        }
        gei p = p((int) j);
        skip(j);
        return p;
    }

    public final String toString() {
        long j = this.f13080b;
        if (j <= 2147483647L) {
            return p((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f13080b).toString());
    }

    public final void u(long j) {
        if (j == 0) {
            al(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        ghg ak = ak(i);
        byte[] bArr = ak.f18156c;
        int i2 = ak.f18159f;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = bgz.f11559a[(int) (15 & j)];
            j >>>= 4;
        }
        ak.f18159f += i;
        this.f13080b += i;
    }

    @Override // g.dsy
    public final void v(long j) {
        if (this.f13080b < j) {
            throw new EOFException();
        }
    }

    @Override // g.dsy
    public final int w(hck hckVar) {
        bff.p(hckVar, "options");
        int c2 = bgz.c(this, hckVar, false);
        if (c2 == -1) {
            return -1;
        }
        skip(hckVar.f19218b[c2].d());
        return c2;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        bff.p(byteBuffer, abn.EXTRA_SOURCE);
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            ghg ak = ak(1);
            int min = Math.min(i, 8192 - ak.f18159f);
            byteBuffer.get(ak.f18156c, ak.f18159f, min);
            i -= min;
            ak.f18159f += min;
        }
        this.f13080b += remaining;
        return remaining;
    }

    @Override // g.cbs
    public final cbs write(byte[] bArr) {
        bff.p(bArr, abn.EXTRA_SOURCE);
        af(bArr.length, bArr);
        return this;
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs writeByte(int i) {
        al(i);
        return this;
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs writeInt(int i) {
        r(i);
        return this;
    }

    @Override // g.cbs
    public final /* bridge */ /* synthetic */ cbs writeShort(int i) {
        ab(i);
        return this;
    }

    public final String x() {
        return n(this.f13080b, ejm.f15667a);
    }

    public final void y(int i, int i2, String str) {
        char charAt;
        bff.p(str, "string");
        if (i < 0) {
            throw new IllegalArgumentException(awf.ac(i, "beginIndex < 0: ").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(tn.t(i2, i, "endIndex < beginIndex: ", " < ").toString());
        }
        if (i2 > str.length()) {
            StringBuilder z = tn.z(i2, "endIndex > string.length: ", " > ");
            z.append(str.length());
            throw new IllegalArgumentException(z.toString().toString());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                ghg ak = ak(1);
                byte[] bArr = ak.f18156c;
                int i3 = ak.f18159f - i;
                int min = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) charAt2;
                while (true) {
                    i = i4;
                    if (i >= min || (charAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) charAt;
                }
                int i5 = ak.f18159f;
                int i6 = (i3 + i) - i5;
                ak.f18159f = i5 + i6;
                this.f13080b += i6;
            } else {
                if (charAt2 < 2048) {
                    ghg ak2 = ak(2);
                    byte[] bArr2 = ak2.f18156c;
                    int i7 = ak2.f18159f;
                    bArr2[i7] = (byte) ((charAt2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                    bArr2[i7 + 1] = (byte) ((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    ak2.f18159f = i7 + 2;
                    this.f13080b += 2;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    ghg ak3 = ak(3);
                    byte[] bArr3 = ak3.f18156c;
                    int i8 = ak3.f18159f;
                    bArr3[i8] = (byte) ((charAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (charAt2 >> 6)) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    bArr3[i8 + 2] = (byte) ((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    ak3.f18159f = i8 + 3;
                    this.f13080b += 3;
                } else {
                    int i9 = i + 1;
                    char charAt3 = i9 < i2 ? str.charAt(i9) : (char) 0;
                    if (charAt2 > 56319 || 56320 > charAt3 || charAt3 >= 57344) {
                        al(63);
                        i = i9;
                    } else {
                        int i10 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                        ghg ak4 = ak(4);
                        byte[] bArr4 = ak4.f18156c;
                        int i11 = ak4.f18159f;
                        bArr4[i11] = (byte) ((i10 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                        bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        bArr4[i11 + 3] = (byte) ((i10 & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        ak4.f18159f = i11 + 4;
                        this.f13080b += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    public final byte[] z(long j) {
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        }
        if (this.f13080b < j) {
            throw new EOFException();
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = read(bArr, i2, i - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
        return bArr;
    }
}
