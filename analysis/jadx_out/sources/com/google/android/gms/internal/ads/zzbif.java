package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.AbstractAdViewAdapter;
import g.cca;
import g.ccj;
import g.fdm;
import g.fyz;

/* loaded from: classes3.dex */
public final class zzbif extends zzbhl {

    /* renamed from: a, reason: collision with root package name */
    public final fdm f4829a;

    public zzbif(fdm fdmVar) {
        this.f4829a = fdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final void zze(zzbhv zzbhvVar) {
        zzbhw zzbhwVar = new zzbhw(zzbhvVar);
        cca ccaVar = (cca) this.f4829a;
        ccaVar.getClass();
        fyz fyzVar = new fyz();
        fyzVar.f15448e = new Bundle();
        fyzVar.f15450g = zzbhwVar.zzh();
        fyzVar.k = zzbhwVar.zzk();
        fyzVar.m = zzbhwVar.zzf();
        fyzVar.f15447d = zzbhwVar.zzb();
        fyzVar.f15449f = zzbhwVar.zzg();
        fyzVar.h = zzbhwVar.zze();
        fyzVar.n = zzbhwVar.zzc();
        fyzVar.f15444a = zzbhwVar.zzj();
        fyzVar.j = zzbhwVar.zzi();
        fyzVar.f15445b = zzbhwVar.zzd();
        fyzVar.i = true;
        fyzVar.f15446c = true;
        fyzVar.l = zzbhwVar.zza();
        ((ccj) ccaVar.f12622f).onAdLoaded((AbstractAdViewAdapter) ccaVar.h, fyzVar);
    }
}
