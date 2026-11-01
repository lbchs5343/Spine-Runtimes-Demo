package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzdoo implements zzbki {

    /* renamed from: a, reason: collision with root package name */
    public final String f6320a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6321b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcxt f6322c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbwv f6323d;

    public zzdoo(zzcxt zzcxtVar, zzfet zzfetVar) {
        this.f6322c = zzcxtVar;
        this.f6323d = zzfetVar.zzl;
        this.f6320a = zzfetVar.zzj;
        this.f6321b = zzfetVar.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void zza(zzbwv zzbwvVar) {
        int i;
        String str;
        zzbwv zzbwvVar2 = this.f6323d;
        if (zzbwvVar2 != null) {
            zzbwvVar = zzbwvVar2;
        }
        if (zzbwvVar != null) {
            str = zzbwvVar.zza;
            i = zzbwvVar.zzb;
        } else {
            i = 1;
            str = "";
        }
        this.f6322c.zzd(new zzbwg(str, i), this.f6320a, this.f6321b);
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void zzb() {
        this.f6322c.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void zzc() {
        this.f6322c.zzf();
    }
}
