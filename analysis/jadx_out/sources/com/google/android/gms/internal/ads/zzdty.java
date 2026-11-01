package com.google.android.gms.internal.ads;

import android.content.Context;
import g.aeh;
import g.bpp;
import g.bwx;
import g.eno;
import g.ns;

/* loaded from: classes3.dex */
public final class zzdty implements bwx {

    /* renamed from: a, reason: collision with root package name */
    public final long f6511a;

    /* renamed from: b, reason: collision with root package name */
    public final zzena f6512b;

    public zzdty(long j, Context context, zzdtr zzdtrVar, zzchk zzchkVar, String str) {
        this.f6511a = j;
        zzfcy zzv = zzchkVar.zzv();
        zzv.mo9zzc(context);
        zzv.mo7zza(new eno());
        zzv.mo8zzb(str);
        zzena zza = zzv.mo10zzd().zza();
        this.f6512b = zza;
        zza.zzD(new ns(this, zzdtrVar));
    }

    @Override // g.bwx
    public final void zza() {
        this.f6512b.zzx();
    }

    @Override // g.bwx
    public final void zzb(aeh aehVar) {
        this.f6512b.zzab(aehVar);
    }

    @Override // g.bwx
    public final void zzc() {
        this.f6512b.zzW(new bpp(null));
    }
}
