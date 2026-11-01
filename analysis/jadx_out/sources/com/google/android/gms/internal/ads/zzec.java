package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class zzec {

    /* renamed from: a, reason: collision with root package name */
    public int f6790a;

    /* renamed from: b, reason: collision with root package name */
    public int f6791b;

    /* renamed from: c, reason: collision with root package name */
    public int f6792c;
    public byte[] zza;

    public zzec() {
        this.zza = zzen.zzf;
    }

    public zzec(byte[] bArr, int i) {
        this.zza = bArr;
        this.f6792c = i;
    }

    public final void d() {
        int i;
        int i2 = this.f6790a;
        boolean z = false;
        if (i2 >= 0 && (i2 < (i = this.f6792c) || (i2 == i && this.f6791b == 0))) {
            z = true;
        }
        zzdb.zzf(z);
    }

    public final int zza() {
        return ((this.f6792c - this.f6790a) * 8) - this.f6791b;
    }

    public final int zzb() {
        zzdb.zzf(this.f6791b == 0);
        return this.f6790a;
    }

    public final int zzc() {
        return (this.f6790a * 8) + this.f6791b;
    }

    public final int zzd(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f6791b += i;
        int i3 = 0;
        while (true) {
            i2 = this.f6791b;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f6791b = i4;
            byte[] bArr = this.zza;
            int i5 = this.f6790a;
            this.f6790a = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.zza;
        int i6 = this.f6790a;
        int i7 = i3 | ((bArr2[i6] & 255) >> (8 - i2));
        int i8 = 32 - i;
        if (i2 == 8) {
            this.f6791b = 0;
            this.f6790a = i6 + 1;
        }
        int i9 = ((-1) >>> i8) & i7;
        d();
        return i9;
    }

    public final long zze(int i) {
        if (i <= 32) {
            int zzd = zzd(i);
            int i2 = zzen.zza;
            return 4294967295L & zzd;
        }
        int zzd2 = zzd(i - 32);
        int zzd3 = zzd(32);
        int i3 = zzen.zza;
        return (4294967295L & zzd3) | ((zzd2 & 4294967295L) << 32);
    }

    public final void zzf() {
        if (this.f6791b == 0) {
            return;
        }
        this.f6791b = 0;
        this.f6790a++;
        d();
    }

    public final void zzg(int i, int i2) {
        int min = Math.min(8 - this.f6791b, 14);
        int i3 = this.f6791b;
        int i4 = (8 - i3) - min;
        byte[] bArr = this.zza;
        int i5 = this.f6790a;
        byte b2 = (byte) (((65280 >> i3) | ((1 << i4) - 1)) & bArr[i5]);
        bArr[i5] = b2;
        int i6 = 14 - min;
        int i7 = i & 16383;
        bArr[i5] = (byte) (b2 | ((i7 >>> i6) << i4));
        int i8 = i5 + 1;
        while (i6 > 8) {
            i6 -= 8;
            this.zza[i8] = (byte) (i7 >>> i6);
            i8++;
        }
        byte[] bArr2 = this.zza;
        byte b3 = (byte) (bArr2[i8] & ((1 << r0) - 1));
        bArr2[i8] = b3;
        bArr2[i8] = (byte) (((i7 & ((1 << i6) - 1)) << (8 - i6)) | b3);
        zzn(14);
        d();
    }

    public final void zzh(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = 0;
        while (true) {
            i3 = i2 >> 3;
            if (i4 >= i3) {
                break;
            }
            byte[] bArr2 = this.zza;
            int i5 = this.f6790a;
            int i6 = i5 + 1;
            this.f6790a = i6;
            byte b2 = bArr2[i5];
            int i7 = this.f6791b;
            byte b3 = (byte) (b2 << i7);
            bArr[i4] = b3;
            bArr[i4] = (byte) (((bArr2[i6] & 255) >> (8 - i7)) | b3);
            i4++;
        }
        int i8 = i2 & 7;
        if (i8 == 0) {
            return;
        }
        byte b4 = (byte) (bArr[i3] & (MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE >> i8));
        bArr[i3] = b4;
        int i9 = this.f6791b;
        if (i9 + i8 > 8) {
            byte[] bArr3 = this.zza;
            int i10 = this.f6790a;
            this.f6790a = i10 + 1;
            b4 = (byte) (b4 | ((bArr3[i10] & 255) << i9));
            bArr[i3] = b4;
            i9 -= 8;
        }
        int i11 = i9 + i8;
        this.f6791b = i11;
        byte[] bArr4 = this.zza;
        int i12 = this.f6790a;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i12]) >> (8 - i11)) << (8 - i8))) | b4);
        if (i11 == 8) {
            this.f6791b = 0;
            this.f6790a = i12 + 1;
        }
        d();
    }

    public final void zzi(byte[] bArr, int i, int i2) {
        zzdb.zzf(this.f6791b == 0);
        System.arraycopy(this.zza, this.f6790a, bArr, 0, i2);
        this.f6790a += i2;
        d();
    }

    public final void zzj(zzed zzedVar) {
        zzk(zzedVar.zzN(), zzedVar.zze());
        zzl(zzedVar.zzd() * 8);
    }

    public final void zzk(byte[] bArr, int i) {
        this.zza = bArr;
        this.f6790a = 0;
        this.f6791b = 0;
        this.f6792c = i;
    }

    public final void zzl(int i) {
        int i2 = i / 8;
        this.f6790a = i2;
        this.f6791b = i - (i2 * 8);
        d();
    }

    public final void zzm() {
        int i = this.f6791b + 1;
        this.f6791b = i;
        if (i == 8) {
            this.f6791b = 0;
            this.f6790a++;
        }
        d();
    }

    public final void zzn(int i) {
        int i2 = i / 8;
        int i3 = this.f6790a + i2;
        this.f6790a = i3;
        int i4 = (i - (i2 * 8)) + this.f6791b;
        this.f6791b = i4;
        if (i4 > 7) {
            this.f6790a = i3 + 1;
            this.f6791b = i4 - 8;
        }
        d();
    }

    public final void zzo(int i) {
        zzdb.zzf(this.f6791b == 0);
        this.f6790a += i;
        d();
    }

    public final boolean zzp() {
        int i = this.zza[this.f6790a] & (TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME >> this.f6791b);
        zzm();
        return i != 0;
    }
}
