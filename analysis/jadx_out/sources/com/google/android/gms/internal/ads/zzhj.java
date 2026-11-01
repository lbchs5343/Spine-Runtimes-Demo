package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import g.clx;

/* loaded from: classes3.dex */
public final class zzhj {

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f8747a;

    /* renamed from: b, reason: collision with root package name */
    public final clx f8748b;
    public byte[] zza;
    public byte[] zzb;
    public int zzc;
    public int[] zzd;
    public int[] zze;
    public int zzf;
    public int zzg;
    public int zzh;

    public zzhj() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f8747a = cryptoInfo;
        this.f8748b = zzen.zza >= 24 ? new clx(cryptoInfo) : null;
    }

    public final MediaCodec.CryptoInfo zza() {
        return this.f8747a;
    }

    public final void zzb(int i) {
        if (i == 0) {
            return;
        }
        if (this.zzd == null) {
            int[] iArr = new int[1];
            this.zzd = iArr;
            this.f8747a.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.zzd;
        iArr2[0] = iArr2[0] + i;
    }

    public final void zzc(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.zzf = i;
        this.zzd = iArr;
        this.zze = iArr2;
        this.zzb = bArr;
        this.zza = bArr2;
        this.zzc = i2;
        this.zzg = i3;
        this.zzh = i4;
        MediaCodec.CryptoInfo cryptoInfo = this.f8747a;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (zzen.zza >= 24) {
            clx clxVar = this.f8748b;
            clxVar.getClass();
            ((MediaCodec.CryptoInfo.Pattern) clxVar.f13101c).set(i3, i4);
            ((MediaCodec.CryptoInfo) clxVar.f13103e).setPattern((MediaCodec.CryptoInfo.Pattern) clxVar.f13101c);
        }
    }
}
