package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzcol {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsm f5447a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfff f5448b;

    public zzcol(zzdsm zzdsmVar, zzfff zzfffVar) {
        this.f5447a = zzdsmVar;
        this.f5448b = zzfffVar;
    }

    public final void zza(long j, int i) {
        zzdsl zza = this.f5447a.zza();
        zza.zzd(this.f5448b.zzb.zzb);
        zza.zzb("action", "ad_closed");
        zza.zzb("show_time", String.valueOf(j));
        zza.zzb("ad_format", "app_open_ad");
        int i2 = i - 1;
        zza.zzb("acr", i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h");
        zza.zzf();
    }
}
