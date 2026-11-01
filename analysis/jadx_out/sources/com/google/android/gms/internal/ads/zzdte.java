package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdte implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzdta f6492a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6493b;

    public zzdte(zzdta zzdtaVar, zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6492a = zzdtaVar;
        this.f6493b = zzhgpVar;
    }

    public static Set zza(zzdta zzdtaVar, zzdtk zzdtkVar, Executor executor) {
        Set zzd = zzdta.zzd(zzdtkVar, executor);
        zzhgf.zzb(zzd);
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza(this.f6492a, (zzdtk) this.f6493b.zzb(), zzfin.zzc());
    }
}
