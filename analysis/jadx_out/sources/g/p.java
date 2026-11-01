package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class p extends afo {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f19786a = Logger.getLogger(p.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f19787b = diy.f14256b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19788c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19789d;

    /* renamed from: e, reason: collision with root package name */
    public int f19790e;

    /* renamed from: f, reason: collision with root package name */
    public aoy f19791f;

    public p(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i)));
        }
        this.f19788c = bArr;
        this.f19790e = 0;
        this.f19789d = i;
    }

    public static int g(int i) {
        if (i >= 0) {
            return h(i);
        }
        return 10;
    }

    public static int h(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int i(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static int j(String str) {
        int length;
        try {
            length = gua.d(str);
        } catch (vw unused) {
            length = str.getBytes(dhz.f14209a).length;
        }
        return h(length) + length;
    }

    public static int k(int i, cir cirVar, ciw ciwVar) {
        int h = h(i << 3);
        int i2 = h + h;
        cys cysVar = (cys) cirVar;
        int i3 = cysVar.zzd;
        if (i3 == -1) {
            i3 = ciwVar.zza(cirVar);
            cysVar.zzd = i3;
        }
        return i2 + i3;
    }

    public static int l(int i) {
        return h(i << 3);
    }

    public final void m(int i) {
        try {
            byte[] bArr = this.f19788c;
            int i2 = this.f19790e;
            int i3 = i2 + 1;
            this.f19790e = i3;
            bArr[i2] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i4 = i2 + 2;
            this.f19790e = i4;
            bArr[i3] = (byte) ((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i5 = i2 + 3;
            this.f19790e = i5;
            bArr[i4] = (byte) ((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            this.f19790e = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        } catch (IndexOutOfBoundsException e2) {
            throw new gng(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19790e), Integer.valueOf(this.f19789d), 1), e2);
        }
    }

    public final void n(int i, int i2) {
        r((i << 3) | i2);
    }

    public final void o(int i, long j) {
        r(i << 3);
        v(j);
    }

    public final void p(int i, int i2) {
        r((i << 3) | 5);
        m(i2);
    }

    public final void q(byte b2) {
        try {
            byte[] bArr = this.f19788c;
            int i = this.f19790e;
            this.f19790e = i + 1;
            bArr[i] = b2;
        } catch (IndexOutOfBoundsException e2) {
            throw new gng(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19790e), Integer.valueOf(this.f19789d), 1), e2);
        }
    }

    public final void r(int i) {
        while (true) {
            int i2 = i & (-128);
            byte[] bArr = this.f19788c;
            if (i2 == 0) {
                int i3 = this.f19790e;
                this.f19790e = i3 + 1;
                bArr[i3] = (byte) i;
                return;
            } else {
                try {
                    int i4 = this.f19790e;
                    this.f19790e = i4 + 1;
                    bArr[i4] = (byte) ((i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new gng(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19790e), Integer.valueOf(this.f19789d), 1), e2);
                }
            }
            throw new gng(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19790e), Integer.valueOf(this.f19789d), 1), e2);
        }
    }

    public final void s(int i, String str) {
        r((i << 3) | 2);
        int i2 = this.f19790e;
        try {
            int h = h(str.length() * 3);
            int h2 = h(str.length());
            int i3 = this.f19789d;
            byte[] bArr = this.f19788c;
            if (h2 != h) {
                r(gua.d(str));
                int i4 = this.f19790e;
                this.f19790e = gua.c(str, bArr, i4, i3 - i4);
            } else {
                int i5 = i2 + h2;
                this.f19790e = i5;
                int c2 = gua.c(str, bArr, i5, i3 - i5);
                this.f19790e = i2;
                r((c2 - i2) - h2);
                this.f19790e = c2;
            }
        } catch (vw e2) {
            this.f19790e = i2;
            f19786a.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
            byte[] bytes = str.getBytes(dhz.f14209a);
            try {
                int length = bytes.length;
                r(length);
                x(length, bytes);
            } catch (IndexOutOfBoundsException e3) {
                throw new gng(e3);
            }
        } catch (IndexOutOfBoundsException e4) {
            throw new gng(e4);
        }
    }

    public final void t(long j) {
        try {
            byte[] bArr = this.f19788c;
            int i = this.f19790e;
            int i2 = i + 1;
            this.f19790e = i2;
            bArr[i] = (byte) (((int) j) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i3 = i + 2;
            this.f19790e = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i4 = i + 3;
            this.f19790e = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i5 = i + 4;
            this.f19790e = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i6 = i + 5;
            this.f19790e = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i7 = i + 6;
            this.f19790e = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i8 = i + 7;
            this.f19790e = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            this.f19790e = i + 8;
            bArr[i8] = (byte) (((int) (j >> 56)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        } catch (IndexOutOfBoundsException e2) {
            throw new gng(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19790e), Integer.valueOf(this.f19789d), 1), e2);
        }
    }

    public final void u(int i, cyb cybVar) {
        r((i << 3) | 2);
        r(cybVar.c());
        crn crnVar = (crn) cybVar;
        x(crnVar.c(), crnVar.zza);
    }

    public final void v(long j) {
        boolean z = f19787b;
        int i = this.f19789d;
        byte[] bArr = this.f19788c;
        if (!z || i - this.f19790e < 10) {
            while ((j & (-128)) != 0) {
                try {
                    int i2 = this.f19790e;
                    this.f19790e = i2 + 1;
                    bArr[i2] = (byte) ((((int) j) & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new gng(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19790e), Integer.valueOf(i), 1), e2);
                }
            }
            int i3 = this.f19790e;
            this.f19790e = i3 + 1;
            bArr[i3] = (byte) j;
            return;
        }
        while ((j & (-128)) != 0) {
            int i4 = this.f19790e;
            this.f19790e = i4 + 1;
            diy.f14260f.b(bArr, diy.f14258d + i4, (byte) ((((int) j) & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME));
            j >>>= 7;
        }
        int i5 = this.f19790e;
        this.f19790e = i5 + 1;
        diy.f14260f.b(bArr, diy.f14258d + i5, (byte) j);
    }

    public final void w(int i, long j) {
        r((i << 3) | 1);
        t(j);
    }

    public final void x(int i, byte[] bArr) {
        try {
            System.arraycopy(bArr, 0, this.f19788c, this.f19790e, i);
            this.f19790e += i;
        } catch (IndexOutOfBoundsException e2) {
            throw new gng(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19790e), Integer.valueOf(this.f19789d), Integer.valueOf(i)), e2);
        }
    }
}
