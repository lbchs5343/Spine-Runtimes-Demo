package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public final class gdu extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f17950a = StandardCharsets.UTF_16LE;

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f17951b = StandardCharsets.UTF_8;

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f17952c = new byte[0];

    /* renamed from: e, reason: collision with root package name */
    public final InputStream f17954e;

    /* renamed from: f, reason: collision with root package name */
    public long f17955f = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f17953d = 0;

    public gdu(InputStream inputStream) {
        this.f17954e = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream);
    }

    public final String g(int i) {
        return new String(o(i * 2), f17950a).trim();
    }

    public final int h() {
        this.f17955f += 2;
        InputStream inputStream = this.f17954e;
        return ((inputStream.read() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 8) | (inputStream.read() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public final int i() {
        this.f17955f += 4;
        InputStream inputStream = this.f17954e;
        int read = inputStream.read();
        return (inputStream.read() << 24) | ((inputStream.read() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 16) | ((inputStream.read() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 8) | (read & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public final int j() {
        this.f17955f++;
        return this.f17954e.read();
    }

    public final void k(int i, String str) {
        int h = h();
        if (h == i) {
            return;
        }
        n(i, h, str);
        throw null;
    }

    public final void l(long j, String str) {
        long j2 = this.f17955f;
        if (j2 <= j) {
            if (j2 < j) {
                skip(j - j2);
            }
            m(j, str);
        } else {
            StringBuilder l = tn.l(str, ", expected offset not reachable: 0x");
            l.append(Long.toHexString(j));
            l.append(", actual: 0x");
            l.append(Long.toHexString(this.f17955f));
            throw new IOException(l.toString());
        }
    }

    public final void m(long j, String str) {
        if (this.f17955f == j) {
            return;
        }
        StringBuilder l = tn.l(str, ", expected offset: 0x");
        l.append(Long.toHexString(j));
        l.append(", actual: 0x");
        l.append(Long.toHexString(this.f17955f));
        throw new IOException(l.toString());
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        InputStream inputStream = this.f17954e;
        if (inputStream.markSupported()) {
            inputStream.mark(i);
            this.f17953d = this.f17955f;
        } else {
            throw new RuntimeException("Mark not supported for input stream " + inputStream.getClass());
        }
    }

    public final void n(int i, int i2, String str) {
        StringBuilder l = tn.l(str, ", expected: 0x");
        l.append(Integer.toHexString(i));
        l.append(", actual: 0x");
        l.append(Integer.toHexString(i2));
        l.append(", offset: 0x");
        l.append(Long.toHexString(this.f17955f));
        throw new IOException(l.toString());
    }

    public final byte[] o(int i) {
        if (i == 0) {
            return f17952c;
        }
        this.f17955f += i;
        byte[] bArr = new byte[i];
        InputStream inputStream = this.f17954e;
        int read = inputStream.read(bArr, 0, i);
        while (read < i) {
            int read2 = inputStream.read(bArr, read, i - read);
            if (read2 == -1) {
                throw new IOException(awf.b(i, "No data, can't read ", " bytes"));
            }
            read += read2;
        }
        return bArr;
    }

    @Override // java.io.InputStream
    public final int read() {
        return this.f17954e.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return this.f17954e.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public final void reset() {
        this.f17954e.reset();
        this.f17955f = this.f17953d;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        this.f17955f += j;
        InputStream inputStream = this.f17954e;
        long skip = inputStream.skip(j);
        while (skip < j) {
            long skip2 = inputStream.skip(j - skip);
            if (skip2 == 0) {
                throw new IOException("No data, can't skip " + j + " bytes");
            }
            skip += skip2;
        }
        return skip;
    }

    public final String toString() {
        return "pos: 0x" + Long.toHexString(this.f17955f);
    }
}
