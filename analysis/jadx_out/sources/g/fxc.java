package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzgwy;
import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgxz;
import com.google.android.gms.internal.ads.zzgyc;
import com.google.android.gms.internal.ads.zzhai;

/* loaded from: classes3.dex */
public final class fxc extends zzgyc {

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f17566f;

    /* renamed from: g, reason: collision with root package name */
    public final int f17567g;
    public int h;

    public fxc(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i)));
        }
        this.f17566f = bArr;
        this.h = 0;
        this.f17567g = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void e(int i, zzhai zzhaiVar, ah ahVar) {
        zzu((i << 3) | 2);
        zzu(((zzgwy) zzhaiVar).bl(ahVar));
        ahVar.i(zzhaiVar, this.f8675c);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzK() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzL(byte b2) {
        try {
            byte[] bArr = this.f17566f;
            int i = this.h;
            this.h = i + 1;
            bArr[i] = b2;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgxz(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.h), Integer.valueOf(this.f17567g), 1), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzM(int i, boolean z) {
        zzu(i << 3);
        zzL(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzN(int i, zzgxp zzgxpVar) {
        zzu((i << 3) | 2);
        zzu(zzgxpVar.zzd());
        zzgxpVar.k(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc, com.google.android.gms.internal.ads.zzgxg
    public final void zza(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.f17566f, this.h, i2);
            this.h += i2;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgxz(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.h), Integer.valueOf(this.f17567g), Integer.valueOf(i2)), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final int zzb() {
        return this.f17567g - this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzh(int i, int i2) {
        zzu((i << 3) | 5);
        zzi(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzi(int i) {
        try {
            byte[] bArr = this.f17566f;
            int i2 = this.h;
            int i3 = i2 + 1;
            this.h = i3;
            bArr[i2] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i4 = i2 + 2;
            this.h = i4;
            bArr[i3] = (byte) ((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i5 = i2 + 3;
            this.h = i5;
            bArr[i4] = (byte) ((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            this.h = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgxz(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.h), Integer.valueOf(this.f17567g), 1), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzj(int i, long j) {
        zzu((i << 3) | 1);
        zzk(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzk(long j) {
        try {
            byte[] bArr = this.f17566f;
            int i = this.h;
            int i2 = i + 1;
            this.h = i2;
            bArr[i] = (byte) (((int) j) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i3 = i + 2;
            this.h = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i4 = i + 3;
            this.h = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            int i5 = i + 4;
            this.h = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
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
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgxz(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.h), Integer.valueOf(this.f17567g), 1), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzl(int i, int i2) {
        zzu(i << 3);
        zzm(i2);
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
        int i2 = this.h;
        try {
            int zzD = zzgyc.zzD(str.length() * 3);
            int zzD2 = zzgyc.zzD(str.length());
            int i3 = this.f17567g;
            byte[] bArr = this.f17566f;
            if (zzD2 != zzD) {
                zzu(bso.f(str));
                int i4 = this.h;
                this.h = bso.e(str, bArr, i4, i3 - i4);
            } else {
                int i5 = i2 + zzD2;
                this.h = i5;
                int e2 = bso.e(str, bArr, i5, i3 - i5);
                this.h = i2;
                zzu((e2 - i2) - zzD2);
                this.h = e2;
            }
        } catch (tb e3) {
            this.h = i2;
            d(str, e3);
        } catch (IndexOutOfBoundsException e4) {
            throw new zzgxz(e4);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzs(int i, int i2) {
        zzu((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzt(int i, int i2) {
        zzu(i << 3);
        zzu(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzu(int i) {
        while (true) {
            int i2 = i & (-128);
            byte[] bArr = this.f17566f;
            if (i2 == 0) {
                int i3 = this.h;
                this.h = i3 + 1;
                bArr[i3] = (byte) i;
                return;
            } else {
                try {
                    int i4 = this.h;
                    this.h = i4 + 1;
                    bArr[i4] = (byte) ((i | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new zzgxz(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.h), Integer.valueOf(this.f17567g), 1), e2);
                }
            }
            throw new zzgxz(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.h), Integer.valueOf(this.f17567g), 1), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzv(int i, long j) {
        zzu(i << 3);
        zzw(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgyc
    public final void zzw(long j) {
        boolean z = zzgyc.f8674b;
        int i = this.f17567g;
        byte[] bArr = this.f17566f;
        if (!z || i - this.h < 10) {
            while ((j & (-128)) != 0) {
                try {
                    int i2 = this.h;
                    this.h = i2 + 1;
                    bArr[i2] = (byte) ((((int) j) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new zzgxz(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.h), Integer.valueOf(i), 1), e2);
                }
            }
            int i3 = this.h;
            this.h = i3 + 1;
            bArr[i3] = (byte) j;
            return;
        }
        while (true) {
            int i4 = (int) j;
            if ((j & (-128)) == 0) {
                int i5 = this.h;
                this.h = i5 + 1;
                gbc.n(bArr, i5, (byte) i4);
                return;
            } else {
                int i6 = this.h;
                this.h = i6 + 1;
                gbc.n(bArr, i6, (byte) ((i4 | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
                j >>>= 7;
            }
        }
    }
}
