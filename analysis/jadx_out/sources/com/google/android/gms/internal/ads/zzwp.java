package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzwp extends zzuf {

    /* renamed from: a, reason: collision with root package name */
    public final zzaw f8930a;

    public zzwp(zzbv zzbvVar, zzaw zzawVar) {
        super(zzbvVar);
        this.f8930a = zzawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuf, com.google.android.gms.internal.ads.zzbv
    public final zzbu zze(int i, zzbu zzbuVar, long j) {
        this.f8899d.zze(i, zzbuVar, j);
        zzaw zzawVar = this.f8930a;
        zzbuVar.zzd = zzawVar;
        zzar zzarVar = zzawVar.zzb;
        zzbuVar.zzc = null;
        return zzbuVar;
    }
}
