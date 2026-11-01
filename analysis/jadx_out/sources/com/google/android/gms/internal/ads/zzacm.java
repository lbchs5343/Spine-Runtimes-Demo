package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzacm implements zzadx {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4088a = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzadx
    public final /* synthetic */ int zzf(zzn zznVar, int i, boolean z) {
        return zzadv.zza(this, zznVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final int zzg(zzn zznVar, int i, boolean z, int i2) throws IOException {
        int zza = zznVar.zza(this.f4088a, 0, Math.min(4096, i));
        if (zza != -1) {
            return zza;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzl(zzad zzadVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final /* synthetic */ void zzq(zzed zzedVar, int i) {
        zzadv.zzb(this, zzedVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzr(zzed zzedVar, int i, int i2) {
        zzedVar.zzM(i);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzs(long j, int i, int i2, int i3, zzadw zzadwVar) {
    }
}
