package com.bytedance.sdk.component.d.dq.d;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.tn;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class dq implements d, ox, Cloneable, ByteChannel {
    private static final byte[] ox = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: d, reason: collision with root package name */
    long f1831d;
    iw dq;

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    public byte d() {
        long j = this.f1831d;
        if (j == 0) {
            throw new IllegalStateException("size == 0");
        }
        iw iwVar = this.dq;
        int i = iwVar.f1832d;
        int i2 = iwVar.ox;
        int i3 = i + 1;
        byte b2 = iwVar.dq[i];
        this.f1831d = j - 1;
        if (i3 != i2) {
            iwVar.f1832d = i3;
            return b2;
        }
        this.dq = iwVar.d();
        mn.dq(iwVar);
        return b2;
    }

    public dq d(int i) {
        iw ox2 = ox(1);
        byte[] bArr = ox2.dq;
        int i2 = ox2.ox;
        ox2.ox = i2 + 1;
        bArr[i2] = (byte) i;
        this.f1831d++;
        return this;
    }

    public dq d(long j) {
        if (j == 0) {
            return d(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        iw ox2 = ox(numberOfTrailingZeros);
        byte[] bArr = ox2.dq;
        int i = ox2.ox;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = ox[(int) (15 & j)];
            j >>>= 4;
        }
        ox2.ox += numberOfTrailingZeros;
        this.f1831d += numberOfTrailingZeros;
        return this;
    }

    public dq d(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        o.dq(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            iw ox2 = ox(1);
            int min = Math.min(i3 - i, 8192 - ox2.ox);
            System.arraycopy(bArr, i, ox2.dq, ox2.ox, min);
            i += min;
            ox2.ox += min;
        }
        this.f1831d += j;
        return this;
    }

    public int dq(byte[] bArr, int i, int i2) {
        o.dq(bArr.length, i, i2);
        iw iwVar = this.dq;
        if (iwVar == null) {
            return -1;
        }
        int min = Math.min(i2, iwVar.ox - iwVar.f1832d);
        System.arraycopy(iwVar.dq, iwVar.f1832d, bArr, i, min);
        int i3 = iwVar.f1832d + min;
        iwVar.f1832d = i3;
        this.f1831d -= min;
        if (i3 == iwVar.ox) {
            this.dq = iwVar.d();
            mn.dq(iwVar);
        }
        return min;
    }

    public dq dq(int i) {
        if (i < 128) {
            d(i);
            return this;
        }
        if (i < 2048) {
            d((i >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
            d((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            return this;
        }
        if (i >= 65536) {
            if (i > 1114111) {
                throw new IllegalArgumentException(awf.d(new StringBuilder("Unexpected code point: "), i));
            }
            d((i >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            d(((i >> 12) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            d(((i >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            d((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            return this;
        }
        if (i >= 55296 && i <= 57343) {
            d(63);
            return this;
        }
        d((i >> 12) | 224);
        d(((i >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        d((i & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        return this;
    }

    public dq dq(String str) {
        return dq(str, 0, str.length());
    }

    public dq dq(String str, int i, int i2) {
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
                iw ox2 = ox(1);
                byte[] bArr = ox2.dq;
                int i3 = ox2.ox - i;
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
                int i5 = ox2.ox;
                int i6 = (i3 + i) - i5;
                ox2.ox = i5 + i6;
                this.f1831d += i6;
            } else {
                if (charAt2 < 2048) {
                    d((charAt2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                    d((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    d((charAt2 >> '\f') | 224);
                    d(((charAt2 >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    d((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                } else {
                    int i7 = i + 1;
                    char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                    if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                        d(63);
                        i = i7;
                    } else {
                        int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                        d((i8 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                        d(((i8 >> 12) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        d(((i8 >> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        d((i8 & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        i += 2;
                    }
                }
                i++;
            }
        }
        return this;
    }

    public dq dq(String str, int i, int i2, Charset charset) {
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
        if (charset.equals(o.dq)) {
            return dq(str, i, i2);
        }
        byte[] bytes = str.substring(i, i2).getBytes(charset);
        return d(bytes, 0, bytes.length);
    }

    public String dq(long j, Charset charset) throws EOFException {
        o.dq(this.f1831d, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        }
        if (j == 0) {
            return "";
        }
        iw iwVar = this.dq;
        int i = iwVar.f1832d;
        if (i + j > iwVar.ox) {
            return new String(dq(j), charset);
        }
        String str = new String(iwVar.dq, i, (int) j, charset);
        int i2 = (int) (iwVar.f1832d + j);
        iwVar.f1832d = i2;
        this.f1831d -= j;
        if (i2 == iwVar.ox) {
            this.dq = iwVar.d();
            mn.dq(iwVar);
        }
        return str;
    }

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

    public boolean dq() {
        return this.f1831d == 0;
    }

    public byte[] dq(long j) throws EOFException {
        o.dq(this.f1831d, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        }
        byte[] bArr = new byte[(int) j];
        dq(bArr);
        return bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dq)) {
            return false;
        }
        dq dqVar = (dq) obj;
        long j = this.f1831d;
        if (j != dqVar.f1831d) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        iw iwVar = this.dq;
        iw iwVar2 = dqVar.dq;
        int i = iwVar.f1832d;
        int i2 = iwVar2.f1832d;
        while (j2 < this.f1831d) {
            long min = Math.min(iwVar.ox - i, iwVar2.ox - i2);
            int i3 = 0;
            while (i3 < min) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (iwVar.dq[i] != iwVar2.dq[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == iwVar.ox) {
                iwVar = iwVar.iw;
                i = iwVar.f1832d;
            }
            if (i2 == iwVar2.ox) {
                iwVar2 = iwVar2.iw;
                i2 = iwVar2.f1832d;
            }
            j2 += min;
        }
        return true;
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        iw iwVar = this.dq;
        if (iwVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = iwVar.ox;
            for (int i3 = iwVar.f1832d; i3 < i2; i3++) {
                i = (i * 31) + iwVar.dq[i3];
            }
            iwVar = iwVar.iw;
        } while (iwVar != this.dq);
        return i;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public iw ox(int i) {
        if (i <= 0 || i > 8192) {
            throw new IllegalArgumentException();
        }
        iw iwVar = this.dq;
        if (iwVar != null) {
            iw iwVar2 = iwVar.mn;
            return (iwVar2.ox + i > 8192 || !iwVar2.s) ? iwVar2.dq(mn.dq()) : iwVar2;
        }
        iw dq = mn.dq();
        this.dq = dq;
        dq.mn = dq;
        dq.iw = dq;
        return dq;
    }

    public String ox() {
        try {
            return dq(this.f1831d, o.dq);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public dq clone() {
        dq dqVar = new dq();
        if (this.f1831d == 0) {
            return dqVar;
        }
        iw dq = this.dq.dq();
        dqVar.dq = dq;
        dq.mn = dq;
        dq.iw = dq;
        iw iwVar = this.dq;
        while (true) {
            iwVar = iwVar.iw;
            if (iwVar == this.dq) {
                dqVar.f1831d = this.f1831d;
                return dqVar;
            }
            dqVar.dq.mn.dq(iwVar.dq());
        }
    }

    public final p p(int i) {
        return i == 0 ? p.ox : new ia(this, i);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        iw iwVar = this.dq;
        if (iwVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), iwVar.ox - iwVar.f1832d);
        byteBuffer.put(iwVar.dq, iwVar.f1832d, min);
        int i = iwVar.f1832d + min;
        iwVar.f1832d = i;
        this.f1831d -= min;
        if (i == iwVar.ox) {
            this.dq = iwVar.d();
            mn.dq(iwVar);
        }
        return min;
    }

    public final p s() {
        long j = this.f1831d;
        if (j <= 2147483647L) {
            return p((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f1831d);
    }

    public String toString() {
        return s().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            iw ox2 = ox(1);
            int min = Math.min(i, 8192 - ox2.ox);
            byteBuffer.get(ox2.dq, ox2.ox, min);
            i -= min;
            ox2.ox += min;
        }
        this.f1831d += remaining;
        return remaining;
    }
}
