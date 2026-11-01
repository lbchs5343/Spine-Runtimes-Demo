package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public final class zzadz {

    /* renamed from: a, reason: collision with root package name */
    public int f4130a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f4131b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4132c;

    /* renamed from: d, reason: collision with root package name */
    public int f4133d;

    public zzadz(byte[] bArr) {
        this.f4131b = bArr;
        this.f4132c = bArr.length;
    }

    public final int zza() {
        return (this.f4133d * 8) + this.f4130a;
    }

    public final int zzb(int i) {
        int i2 = this.f4133d;
        int i3 = i2 + 1;
        int min = Math.min(i, 8 - this.f4130a);
        byte[] bArr = this.f4131b;
        int i4 = ((bArr[i2] & 255) >> this.f4130a) & (MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE >> (8 - min));
        while (min < i) {
            i4 |= (bArr[i3] & 255) << min;
            min += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        zzc(i);
        return i5;
    }

    public final void zzc(int i) {
        int i2;
        int i3 = i / 8;
        int i4 = this.f4133d + i3;
        this.f4133d = i4;
        int i5 = (i - (i3 * 8)) + this.f4130a;
        this.f4130a = i5;
        if (i5 > 7) {
            i4++;
            this.f4133d = i4;
            i5 -= 8;
            this.f4130a = i5;
        }
        boolean z = false;
        if (i4 >= 0 && (i4 < (i2 = this.f4132c) || (i4 == i2 && i5 == 0))) {
            z = true;
        }
        zzdb.zzf(z);
    }

    public final boolean zzd() {
        int i = (this.f4131b[this.f4133d] & 255) >> this.f4130a;
        zzc(1);
        return 1 == (i & 1);
    }
}
