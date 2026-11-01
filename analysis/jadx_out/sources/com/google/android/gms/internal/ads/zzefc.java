package com.google.android.gms.internal.ads;

import g.dcy;

/* loaded from: classes3.dex */
public final class zzefc implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzfwh f6879a;
    public final zzefb zza;

    public zzefc(zzefb zzefbVar, zzfwh zzfwhVar) {
        this.zza = zzefbVar;
        this.f6879a = zzfwhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(zzfff zzfffVar, zzfet zzfetVar) {
        return zzgei.zzm(this.zza.zza(zzfffVar, zzfetVar), this.f6879a, zzcaj.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        return this.zza.zzb(zzfffVar, zzfetVar);
    }
}
