package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzul extends zzbv {

    /* renamed from: a, reason: collision with root package name */
    public final zzaw f8907a;

    public zzul(zzaw zzawVar) {
        this.f8907a = zzawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zza(Object obj) {
        return obj == h.f3962a ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final zzbt zzd(int i, zzbt zzbtVar, boolean z) {
        zzbtVar.zzi(z ? 0 : null, z ? h.f3962a : null, 0, -9223372036854775807L, 0L, zzb.zza, true);
        return zzbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final zzbu zze(int i, zzbu zzbuVar, long j) {
        zzbuVar.zza(zzbu.zza, this.f8907a, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
        zzbuVar.zzk = true;
        return zzbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final Object zzf(int i) {
        return h.f3962a;
    }
}
