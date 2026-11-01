package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public final class zzatr {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4483a = new byte[256];

    /* renamed from: b, reason: collision with root package name */
    public int f4484b;

    /* renamed from: c, reason: collision with root package name */
    public int f4485c;

    public zzatr(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f4483a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f4483a;
            byte b2 = bArr2[i3];
            i2 = (i2 + b2 + bArr[i3 % bArr.length]) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b2;
        }
        this.f4484b = 0;
        this.f4485c = 0;
    }

    public final void zza(byte[] bArr) {
        int i = this.f4484b;
        int i2 = this.f4485c;
        for (int i3 = 0; i3 < 256; i3++) {
            i = (i + 1) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            byte[] bArr2 = this.f4483a;
            byte b2 = bArr2[i];
            i2 = (i2 + b2) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b2;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + b2) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE] ^ bArr[i3]);
        }
        this.f4484b = i;
        this.f4485c = i2;
    }
}
