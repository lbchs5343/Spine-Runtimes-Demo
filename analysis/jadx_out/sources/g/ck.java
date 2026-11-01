package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzgwy;
import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgxz;
import com.google.android.gms.internal.ads.zzgyc;
import com.google.android.gms.internal.ads.zzhai;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class ck extends zzgyc {

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f13010f;

    /* renamed from: g, reason: collision with root package name */
    public final int f13011g;
    public int h;
    public final OutputStream i;

    public ck(OutputStream outputStream, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        int max = Math.max(i, 20);
        this.f13010f = new byte[max];
        this.f13011g = max;
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.i = outputStream;
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void e(int i, zzhai zzhaiVar, ah ahVar) {
        zzu((i << 3) | 2);
        zzu(((zzgwy) zzhaiVar).bl(ahVar));
        ahVar.i(zzhaiVar, this.f8675c);
    }

    public final void j(long j) {
        boolean z = zzgyc.f8674b;
        byte[] bArr = this.f13010f;
        if (z) {
            while (true) {
                int i = (int) j;
                if ((j & (-128)) == 0) {
                    int i2 = this.h;
                    this.h = i2 + 1;
                    gbc.n(bArr, i2, (byte) i);
                    return;
                } else {
                    int i3 = this.h;
                    this.h = i3 + 1;
                    gbc.n(bArr, i3, (byte) ((i | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
                    j >>>= 7;
                }
            }
        } else {
            while (true) {
                int i4 = (int) j;
                if ((j & (-128)) == 0) {
                    int i5 = this.h;
                    this.h = i5 + 1;
                    bArr[i5] = (byte) i4;
                    return;
                } else {
                    int i6 = this.h;
                    this.h = i6 + 1;
                    bArr[i6] = (byte) ((i4 | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                    j >>>= 7;
                }
            }
        }
    }

    public final void k(int i) {
        if (this.f13011g - this.h < i) {
            o();
        }
    }

    public final void l(int i) {
        int i2 = this.h;
        int i3 = i2 + 1;
        this.h = i3;
        byte b2 = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        byte[] bArr = this.f13010f;
        bArr[i2] = b2;
        int i4 = i2 + 2;
        this.h = i4;
        bArr[i3] = (byte) ((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        int i5 = i2 + 3;
        this.h = i5;
        bArr[i4] = (byte) ((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        this.h = i2 + 4;
        bArr[i5] = (byte) ((i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public final void m(long j) {
        int i = this.h;
        int i2 = i + 1;
        this.h = i2;
        byte[] bArr = this.f13010f;
        bArr[i] = (byte) (j & 255);
        int i3 = i + 2;
        this.h = i3;
        bArr[i2] = (byte) ((j >> 8) & 255);
        int i4 = i + 3;
        this.h = i4;
        bArr[i3] = (byte) ((j >> 16) & 255);
        int i5 = i + 4;
        this.h = i5;
        bArr[i4] = (byte) (255 & (j >> 24));
        int i6 = i + 5;
        this.h = i6;
        bArr[i5] = (byte) (((int) (j >> 32)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        int i7 = i + 6;
        this.h = i7;
        bArr[i6] = (byte) (((int) (j >> 40)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        int i8 = i + 7;
        this.h = i8;
        bArr[i7] = (byte) (((int) (j >> 48)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        this.h = i + 8;
        bArr[i8] = (byte) (((int) (j >> 56)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public final void n(int i, byte[] bArr, int i2) {
        int i3 = this.h;
        int i4 = this.f13011g;
        int i5 = i4 - i3;
        byte[] bArr2 = this.f13010f;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.h += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i5);
        int i6 = i + i5;
        this.h = i4;
        o();
        int i7 = i2 - i5;
        if (i7 > i4) {
            this.i.write(bArr, i6, i7);
        } else {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.h = i7;
        }
    }

    public final void o() {
        this.i.write(this.f13010f, 0, this.h);
        this.h = 0;
    }

    public final void p(int i) {
        boolean z = zzgyc.f8674b;
        byte[] bArr = this.f13010f;
        if (z) {
            while ((i & (-128)) != 0) {
                int i2 = this.h;
                this.h = i2 + 1;
                gbc.n(bArr, i2, (byte) ((i | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
                i >>>= 7;
            }
            int i3 = this.h;
            this.h = i3 + 1;
            gbc.n(bArr, i3, (byte) i);
            return;
        }
        while ((i & (-128)) != 0) {
            int i4 = this.h;
            this.h = i4 + 1;
            bArr[i4] = (byte) ((i | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            i >>>= 7;
        }
        int i5 = this.h;
        this.h = i5 + 1;
        bArr[i5] = (byte) i;
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzK() {
        if (this.h > 0) {
            o();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzL(byte b2) {
        if (this.h == this.f13011g) {
            o();
        }
        int i = this.h;
        this.h = i + 1;
        this.f13010f[i] = b2;
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzM(int i, boolean z) {
        k(11);
        p(i << 3);
        int i2 = this.h;
        this.h = i2 + 1;
        this.f13010f[i2] = z ? (byte) 1 : (byte) 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzN(int i, zzgxp zzgxpVar) {
        zzu((i << 3) | 2);
        zzu(zzgxpVar.zzd());
        zzgxpVar.k(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc, com.google.android.gms.internal.ads.zzgxg
    public final void zza(byte[] bArr, int i, int i2) {
        n(i, bArr, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final int zzb() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzh(int i, int i2) {
        k(14);
        p((i << 3) | 5);
        l(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzi(int i) {
        k(4);
        l(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzj(int i, long j) {
        k(18);
        p((i << 3) | 1);
        m(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzk(long j) {
        k(8);
        m(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzl(int i, int i2) {
        k(20);
        p(i << 3);
        if (i2 >= 0) {
            p(i2);
        } else {
            j(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzm(int i) {
        if (i >= 0) {
            zzu(i);
        } else {
            zzw(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzo(int i, zzhai zzhaiVar) {
        zzu(11);
        zzt(2, i);
        zzu(26);
        zzu(zzhaiVar.zzaY());
        zzhaiVar.zzda(this);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzp(int i, zzgxp zzgxpVar) {
        zzu(11);
        zzt(2, i);
        zzN(3, zzgxpVar);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzq(int i, String str) {
        zzu((i << 3) | 2);
        try {
            int length = str.length() * 3;
            int zzD = zzgyc.zzD(length);
            int i2 = zzD + length;
            int i3 = this.f13011g;
            if (i2 > i3) {
                byte[] bArr = new byte[length];
                int e2 = bso.e(str, bArr, 0, length);
                zzu(e2);
                n(0, bArr, e2);
                return;
            }
            if (i2 > i3 - this.h) {
                o();
            }
            int zzD2 = zzgyc.zzD(str.length());
            int i4 = this.h;
            byte[] bArr2 = this.f13010f;
            try {
                try {
                    if (zzD2 == zzD) {
                        int i5 = i4 + zzD2;
                        this.h = i5;
                        int e3 = bso.e(str, bArr2, i5, i3 - i5);
                        this.h = i4;
                        p((e3 - i4) - zzD2);
                        this.h = e3;
                    } else {
                        int f2 = bso.f(str);
                        p(f2);
                        this.h = bso.e(str, bArr2, this.h, f2);
                    }
                } catch (tb e4) {
                    this.h = i4;
                    throw e4;
                }
            } catch (ArrayIndexOutOfBoundsException e5) {
                throw new zzgxz(e5);
            }
        } catch (tb e6) {
            d(str, e6);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzs(int i, int i2) {
        zzu((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzt(int i, int i2) {
        k(20);
        p(i << 3);
        p(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzu(int i) {
        k(5);
        p(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzv(int i, long j) {
        k(20);
        p(i << 3);
        j(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzw(long j) {
        k(10);
        j(j);
    }
}
