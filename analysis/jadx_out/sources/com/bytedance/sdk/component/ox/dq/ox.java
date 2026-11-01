package com.bytedance.sdk.component.ox.dq;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.tn;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class ox implements p, s, Cloneable, ByteChannel {
    private static final byte[] ox = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: d, reason: collision with root package name */
    long f2161d;
    jy dq;

    @Override // com.bytedance.sdk.component.ox.dq.cd
    public void a_(ox oxVar, long j) {
        jy jyVar;
        if (oxVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (oxVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        i.dq(oxVar.f2161d, 0L, j);
        while (j > 0 && (jyVar = oxVar.dq) != null) {
            if (j < jyVar.ox - jyVar.f2157d) {
                jy jyVar2 = this.dq;
                jy jyVar3 = jyVar2 != null ? jyVar2.mn : null;
                if (jyVar3 != null && jyVar3.s) {
                    if ((jyVar3.ox + j) - (jyVar3.p ? 0 : jyVar3.f2157d) <= 8192) {
                        jyVar.dq(jyVar3, (int) j);
                        oxVar.f2161d -= j;
                        this.f2161d += j;
                        return;
                    }
                }
                oxVar.dq = jyVar.dq((int) j);
            }
            jy jyVar4 = oxVar.dq;
            long j2 = jyVar4.ox - jyVar4.f2157d;
            oxVar.dq = jyVar4.d();
            jy jyVar5 = this.dq;
            if (jyVar5 == null) {
                this.dq = jyVar4;
                jyVar4.mn = jyVar4;
                jyVar4.iw = jyVar4;
            } else {
                jyVar5.mn.dq(jyVar4).ox();
            }
            oxVar.f2161d -= j2;
            this.f2161d += j2;
            j -= j2;
        }
    }

    public final void cd() {
        try {
            ia(this.f2161d);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final byte d(long j) {
        int i;
        long j2 = j;
        i.dq(this.f2161d, j2, 1L);
        long j3 = this.f2161d;
        if (j3 - j2 <= j2) {
            long j4 = j2 - j3;
            try {
                jy jyVar = this.dq;
                do {
                    jyVar = jyVar.mn;
                    int i2 = jyVar.ox;
                    i = jyVar.f2157d;
                    j4 += i2 - i;
                } while (j4 < 0);
                return jyVar.dq[i + ((int) j4)];
            } catch (NullPointerException unused) {
                return (byte) 0;
            }
        }
        jy jyVar2 = this.dq;
        while (true) {
            int i3 = jyVar2.ox;
            int i4 = jyVar2.f2157d;
            long j5 = i3 - i4;
            if (j2 < j5) {
                return jyVar2.dq[i4 + ((int) j2)];
            }
            j2 -= j5;
            jyVar2 = jyVar2.iw;
        }
    }

    public final long d() {
        return this.f2161d;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public ox kk(int i) {
        jy s = s(1);
        byte[] bArr = s.dq;
        int i2 = s.ox;
        s.ox = i2 + 1;
        bArr[i2] = (byte) i;
        this.f2161d++;
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public ox ox(byte[] bArr) {
        if (bArr != null) {
            return ox(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public ox ox(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        i.dq(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            jy s = s(1);
            int min = Math.min(i3 - i, 8192 - s.ox);
            System.arraycopy(bArr, i, s.dq, s.ox, min);
            i += min;
            s.ox += min;
        }
        this.f2161d += j;
        return this;
    }

    public int dq(byte[] bArr, int i, int i2) {
        i.dq(bArr.length, i, i2);
        jy jyVar = this.dq;
        if (jyVar == null) {
            return -1;
        }
        int min = Math.min(i2, jyVar.ox - jyVar.f2157d);
        System.arraycopy(jyVar.dq, jyVar.f2157d, bArr, i, min);
        int i3 = jyVar.f2157d + min;
        jyVar.f2157d = i3;
        this.f2161d -= min;
        if (i3 == jyVar.ox) {
            this.dq = jyVar.d();
            f.dq(jyVar);
        }
        return min;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public long dq(byte b2) {
        return dq(b2, 0L, Long.MAX_VALUE);
    }

    public long dq(byte b2, long j, long j2) {
        jy jyVar;
        long j3 = j;
        long j4 = j2;
        long j5 = 0;
        if (j3 < 0 || j4 < j3) {
            StringBuilder l = awf.l(this.f2161d, "size=", " fromIndex=");
            l.append(j3);
            l.append(" toIndex=");
            l.append(j4);
            throw new IllegalArgumentException(l.toString());
        }
        long j6 = this.f2161d;
        if (j4 > j6) {
            j4 = j6;
        }
        if (j3 == j4 || (jyVar = this.dq) == null) {
            return -1L;
        }
        if (j6 - j3 < j3) {
            while (j6 > j3) {
                jyVar = jyVar.mn;
                j6 -= jyVar.ox - jyVar.f2157d;
            }
        } else {
            while (true) {
                long j7 = (jyVar.ox - jyVar.f2157d) + j5;
                if (j7 >= j3) {
                    break;
                }
                jyVar = jyVar.iw;
                j5 = j7;
            }
            j6 = j5;
        }
        while (j6 < j4) {
            byte[] bArr = jyVar.dq;
            int min = (int) Math.min(jyVar.ox, (jyVar.f2157d + j4) - j6);
            for (int i = (int) ((jyVar.f2157d + j3) - j6); i < min; i++) {
                if (bArr[i] == b2) {
                    return (i - jyVar.f2157d) + j6;
                }
            }
            j6 += jyVar.ox - jyVar.f2157d;
            jyVar = jyVar.iw;
            j3 = j6;
        }
        return -1L;
    }

    public long dq(gh ghVar) throws IOException {
        if (ghVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long dq = ghVar.dq(this, 8192L);
            if (dq == -1) {
                return j;
            }
            j += dq;
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public long dq(ox oxVar, long j) {
        if (oxVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
        long j2 = this.f2161d;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        oxVar.a_(this, j);
        return j;
    }

    public ox dq(int i) {
        if (i < 128) {
            kk(i);
            return this;
        }
        if (i < 2048) {
            kk((i >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
            kk((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            return this;
        }
        if (i >= 65536) {
            if (i > 1114111) {
                throw new IllegalArgumentException(awf.d(new StringBuilder("Unexpected code point: "), i));
            }
            kk((i >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            kk(((i >> 12) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            kk(((i >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            kk((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            return this;
        }
        if (i >= 55296 && i <= 57343) {
            kk(63);
            return this;
        }
        kk((i >> 12) | 224);
        kk(((i >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        kk((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public ox d(iw iwVar) {
        if (iwVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        iwVar.dq(this);
        return this;
    }

    public final ox dq(ox oxVar, long j, long j2) {
        if (oxVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        long j3 = j;
        i.dq(this.f2161d, j3, j2);
        if (j2 != 0) {
            oxVar.f2161d += j2;
            jy jyVar = this.dq;
            while (true) {
                int i = jyVar.ox;
                int i2 = jyVar.f2157d;
                if (j3 < i - i2) {
                    break;
                }
                j3 -= i - i2;
                jyVar = jyVar.iw;
            }
            jy jyVar2 = jyVar;
            long j4 = j2;
            while (j4 > 0) {
                jy dq = jyVar2.dq();
                int i3 = (int) (dq.f2157d + j3);
                dq.f2157d = i3;
                dq.ox = Math.min(i3 + ((int) j4), dq.ox);
                jy jyVar3 = oxVar.dq;
                if (jyVar3 == null) {
                    dq.mn = dq;
                    dq.iw = dq;
                    oxVar.dq = dq;
                } else {
                    jyVar3.mn.dq(dq);
                }
                j4 -= dq.ox - dq.f2157d;
                jyVar2 = jyVar2.iw;
                j3 = 0;
            }
        }
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public ox d(String str) {
        return dq(str, 0, str.length());
    }

    public ox dq(String str, int i, int i2) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)));
        }
        if (i2 < i) {
            throw new IllegalArgumentException(tn.t(i2, i, "endIndex < beginIndex: ", " < "));
        }
        if (i2 > str.length()) {
            StringBuilder z = tn.z(i2, "endIndex > string.length: ", " > ");
            z.append(str.length());
            throw new IllegalArgumentException(z.toString());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                jy s = s(1);
                byte[] bArr = s.dq;
                int i3 = s.ox - i;
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
                int i5 = s.ox;
                int i6 = (i3 + i) - i5;
                s.ox = i5 + i6;
                this.f2161d += i6;
            } else {
                if (charAt2 < 2048) {
                    kk((charAt2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                    kk((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    kk((charAt2 >> '\f') | 224);
                    kk(((charAt2 >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    kk((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                } else {
                    int i7 = i + 1;
                    char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                    if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                        kk(63);
                        i = i7;
                    } else {
                        int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                        kk((i8 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                        kk(((i8 >> 12) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        kk(((i8 >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        kk((i8 & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        i += 2;
                    }
                }
                i++;
            }
        }
        return this;
    }

    public ox dq(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i)));
        }
        if (i2 < i) {
            throw new IllegalArgumentException(tn.t(i2, i, "endIndex < beginIndex: ", " < "));
        }
        if (i2 > str.length()) {
            StringBuilder z = tn.z(i2, "endIndex > string.length: ", " > ");
            z.append(str.length());
            throw new IllegalArgumentException(z.toString());
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (charset.equals(i.dq)) {
            return dq(str, i, i2);
        }
        byte[] bytes = str.substring(i, i2).getBytes(charset);
        return ox(bytes, 0, bytes.length);
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd
    public r dq() {
        return r.ox;
    }

    public String dq(long j, Charset charset) throws EOFException {
        i.dq(this.f2161d, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        }
        if (j == 0) {
            return "";
        }
        jy jyVar = this.dq;
        int i = jyVar.f2157d;
        if (i + j > jyVar.ox) {
            return new String(mn(j), charset);
        }
        String str = new String(jyVar.dq, i, (int) j, charset);
        int i2 = (int) (jyVar.f2157d + j);
        jyVar.f2157d = i2;
        this.f2161d -= j;
        if (i2 == jyVar.ox) {
            this.dq = jyVar.d();
            f.dq(jyVar);
        }
        return str;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public String dq(Charset charset) {
        try {
            return dq(this.f2161d, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public void dq(long j) throws EOFException {
        if (this.f2161d < j) {
            throw new EOFException();
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public void dq(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int dq = dq(bArr, i, bArr.length - i);
            if (dq == -1) {
                throw new EOFException();
            }
            i += dq;
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public boolean dq(long j, iw iwVar) {
        return dq(j, iwVar, 0, iwVar.mn());
    }

    public boolean dq(long j, iw iwVar, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f2161d - j < i2 || iwVar.mn() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (d(i3 + j) != iwVar.dq(i + i3)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ox)) {
            return false;
        }
        ox oxVar = (ox) obj;
        long j = this.f2161d;
        if (j != oxVar.f2161d) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        jy jyVar = this.dq;
        jy jyVar2 = oxVar.dq;
        int i = jyVar.f2157d;
        int i2 = jyVar2.f2157d;
        while (j2 < this.f2161d) {
            long min = Math.min(jyVar.ox - i, jyVar2.ox - i2);
            int i3 = 0;
            while (i3 < min) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (jyVar.dq[i] != jyVar2.dq[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == jyVar.ox) {
                jyVar = jyVar.iw;
                i = jyVar.f2157d;
            }
            if (i2 == jyVar2.ox) {
                jyVar2 = jyVar2.iw;
                i2 = jyVar2.f2157d;
            }
            j2 += min;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public String f() throws EOFException {
        return s(Long.MAX_VALUE);
    }

    @Override // com.bytedance.sdk.component.ox.dq.p, com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
    public void flush() {
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public byte[] fw() throws EOFException {
        return mn(this.f2161d);
    }

    /* renamed from: gh, reason: merged with bridge method [inline-methods] */
    public ox clone() {
        ox oxVar = new ox();
        if (this.f2161d == 0) {
            return oxVar;
        }
        jy dq = this.dq.dq();
        oxVar.dq = dq;
        dq.mn = dq;
        dq.iw = dq;
        jy jyVar = this.dq;
        while (true) {
            jyVar = jyVar.iw;
            if (jyVar == this.dq) {
                oxVar.f2161d = this.f2161d;
                return oxVar;
            }
            oxVar.dq.mn.dq(jyVar.dq());
        }
    }

    public int hashCode() {
        jy jyVar = this.dq;
        if (jyVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = jyVar.ox;
            for (int i3 = jyVar.f2157d; i3 < i2; i3++) {
                i = (i * 31) + jyVar.dq[i3];
            }
            jyVar = jyVar.iw;
        } while (jyVar != this.dq);
        return i;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public byte ia() {
        long j = this.f2161d;
        if (j == 0) {
            throw new IllegalStateException("size == 0");
        }
        jy jyVar = this.dq;
        int i = jyVar.f2157d;
        int i2 = jyVar.ox;
        int i3 = i + 1;
        byte b2 = jyVar.dq[i];
        this.f2161d = j - 1;
        if (i3 != i2) {
            jyVar.f2157d = i3;
            return b2;
        }
        this.dq = jyVar.d();
        f.dq(jyVar);
        return b2;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public void ia(long j) throws EOFException {
        jy jyVar;
        while (j > 0 && (jyVar = this.dq) != null) {
            int min = (int) Math.min(j, jyVar.ox - jyVar.f2157d);
            long j2 = min;
            this.f2161d -= j2;
            j -= j2;
            jy jyVar2 = this.dq;
            int i = jyVar2.f2157d + min;
            jyVar2.f2157d = i;
            if (i == jyVar2.ox) {
                this.dq = jyVar2.d();
                f.dq(jyVar2);
            }
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public int ig() {
        return i.dq(o());
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final iw iw(int i) {
        return i == 0 ? iw.f2156d : new fw(this, i);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public InputStream iw() {
        return new InputStream() { // from class: com.bytedance.sdk.component.ox.dq.ox.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(ox.this.f2161d, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                ox oxVar = ox.this;
                if (oxVar.f2161d > 0) {
                    return oxVar.ia() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return ox.this.dq(bArr, i, i2);
            }

            public String toString() {
                return ox.this + ".inputStream()";
            }
        };
    }

    public String iw(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (d(j2) == 13) {
                String p = p(j2);
                ia(2L);
                return p;
            }
        }
        String p2 = p(j);
        ia(1L);
        return p2;
    }

    public String jy() {
        try {
            return dq(this.f2161d, i.dq);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: kk, reason: merged with bridge method [inline-methods] */
    public ox ig(long j) {
        boolean z;
        if (j == 0) {
            return kk(48);
        }
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return d("-9223372036854775808");
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
        jy s = s(i);
        byte[] bArr = s.dq;
        int i2 = s.ox + i;
        while (j != 0) {
            i2--;
            bArr[i2] = ox[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        s.ox += i;
        this.f2161d += i;
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public short kk() {
        long j = this.f2161d;
        if (j < 2) {
            throw new IllegalStateException("size < 2: " + this.f2161d);
        }
        jy jyVar = this.dq;
        int i = jyVar.f2157d;
        int i2 = jyVar.ox;
        if (i2 - i < 2) {
            return (short) (((ia() & 255) << 8) | (ia() & 255));
        }
        byte[] bArr = jyVar.dq;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.f2161d = j - 2;
        if (i5 == i2) {
            this.dq = jyVar.d();
            f.dq(jyVar);
        } else {
            jyVar.f2157d = i5;
        }
        return (short) i6;
    }

    public final long mn() {
        long j = this.f2161d;
        if (j == 0) {
            return 0L;
        }
        jy jyVar = this.dq.mn;
        return (jyVar.ox >= 8192 || !jyVar.s) ? j : j - (r3 - jyVar.f2157d);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public byte[] mn(long j) throws EOFException {
        i.dq(this.f2161d, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        }
        byte[] bArr = new byte[(int) j];
        dq(bArr);
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0095 A[EDGE_INSN: B:40:0x0095->B:37:0x0095 BREAK  A[LOOP:0: B:4:0x000b->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008d  */
    @Override // com.bytedance.sdk.component.ox.dq.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long mp() {
        int i;
        if (this.f2161d == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i2 = 0;
        long j = 0;
        boolean z = false;
        do {
            jy jyVar = this.dq;
            byte[] bArr = jyVar.dq;
            int i3 = jyVar.f2157d;
            int i4 = jyVar.ox;
            while (i3 < i4) {
                byte b2 = bArr[i3];
                if (b2 >= 48 && b2 <= 57) {
                    i = b2 - 48;
                } else if (b2 >= 97 && b2 <= 102) {
                    i = b2 - 87;
                } else if (b2 >= 65 && b2 <= 70) {
                    i = b2 - 55;
                } else {
                    if (i2 == 0) {
                        throw new NumberFormatException(awf.d(new StringBuilder("Expected leading [0-9a-fA-F] character but was 0x"), b2));
                    }
                    z = true;
                    if (i3 != i4) {
                        this.dq = jyVar.d();
                        f.dq(jyVar);
                    } else {
                        jyVar.f2157d = i3;
                    }
                    if (!z) {
                        break;
                    }
                }
                if (((-1152921504606846976L) & j) != 0) {
                    throw new NumberFormatException("Number too large: " + new ox().no(j).kk((int) b2).jy());
                }
                j = (j << 4) | i;
                i3++;
                i2++;
            }
            if (i3 != i4) {
            }
            if (!z) {
            }
        } while (this.dq != null);
        this.f2161d -= i2;
        return j;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public short no() {
        return i.dq(kk());
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public int o() {
        long j = this.f2161d;
        if (j < 4) {
            throw new IllegalStateException("size < 4: " + this.f2161d);
        }
        jy jyVar = this.dq;
        int i = jyVar.f2157d;
        int i2 = jyVar.ox;
        if (i2 - i < 4) {
            return ((ia() & 255) << 24) | ((ia() & 255) << 16) | ((ia() & 255) << 8) | (ia() & 255);
        }
        byte[] bArr = jyVar.dq;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.f2161d = j - 4;
        if (i5 != i2) {
            jyVar.f2157d = i5;
            return i6;
        }
        this.dq = jyVar.d();
        f.dq(jyVar);
        return i6;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public ox no(long j) {
        if (j == 0) {
            return kk(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        jy s = s(numberOfTrailingZeros);
        byte[] bArr = s.dq;
        int i = s.ox;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = ox[(int) (15 & j)];
            j >>>= 4;
        }
        s.ox += numberOfTrailingZeros;
        this.f2161d += numberOfTrailingZeros;
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public iw ox(long j) throws EOFException {
        return new iw(mn(j));
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    public ox ox() {
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: ox, reason: merged with bridge method [inline-methods] */
    public ox ia(int i) {
        jy s = s(2);
        byte[] bArr = s.dq;
        int i2 = s.ox;
        bArr[i2] = (byte) ((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 1] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        s.ox = i2 + 2;
        this.f2161d += 2;
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public ox i() {
        return this;
    }

    @Override // com.bytedance.sdk.component.ox.dq.p
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public ox mn(int i) {
        jy s = s(4);
        byte[] bArr = s.dq;
        int i2 = s.ox;
        bArr[i2] = (byte) ((i >>> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 1] = (byte) ((i >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 2] = (byte) ((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[i2 + 3] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        s.ox = i2 + 4;
        this.f2161d += 4;
        return this;
    }

    public String p(long j) throws EOFException {
        return dq(j, i.dq);
    }

    public iw q() throws EOFException {
        return new iw(fw());
    }

    public final iw r() {
        long j = this.f2161d;
        if (j <= 2147483647L) {
            return iw((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f2161d);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        jy jyVar = this.dq;
        if (jyVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), jyVar.ox - jyVar.f2157d);
        byteBuffer.put(jyVar.dq, jyVar.f2157d, min);
        int i = jyVar.f2157d + min;
        jyVar.f2157d = i;
        this.f2161d -= min;
        if (i == jyVar.ox) {
            this.dq = jyVar.d();
            f.dq(jyVar);
        }
        return min;
    }

    public jy s(int i) {
        if (i <= 0 || i > 8192) {
            throw new IllegalArgumentException();
        }
        jy jyVar = this.dq;
        if (jyVar != null) {
            jy jyVar2 = jyVar.mn;
            return (jyVar2.ox + i > 8192 || !jyVar2.s) ? jyVar2.dq(f.dq()) : jyVar2;
        }
        jy dq = f.dq();
        this.dq = dq;
        dq.mn = dq;
        dq.iw = dq;
        return dq;
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public String s(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long dq = dq((byte) 10, 0L, j2);
        if (dq != -1) {
            return iw(dq);
        }
        if (j2 < d() && d(j2 - 1) == 13 && d(j2) == 10) {
            return iw(j2);
        }
        ox oxVar = new ox();
        dq(oxVar, 0L, Math.min(32L, d()));
        throw new EOFException("\\n not found: limit=" + Math.min(d(), j) + " content=" + oxVar.q().s() + (char) 8230);
    }

    @Override // com.bytedance.sdk.component.ox.dq.s
    public boolean s() {
        return this.f2161d == 0;
    }

    public String toString() {
        return r().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            jy s = s(1);
            int min = Math.min(i, 8192 - s.ox);
            byteBuffer.get(s.dq, s.ox, min);
            i -= min;
            s.ox += min;
        }
        this.f2161d += remaining;
        return remaining;
    }
}
