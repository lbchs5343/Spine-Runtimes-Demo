package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.ti;

/* loaded from: classes3.dex */
public final class zzcil implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5298a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5299b;

    public zzcil(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5298a = zzhgpVar;
        this.f5299b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzbvr zzb() {
        Context zza = ((zzchq) this.f5298a).zza();
        zzfko zzfkoVar = (zzfko) this.f5299b.zzb();
        ti tiVar = ti.f20033a;
        zzboi zzb = tiVar.w.zzb(zza, akx.forPackage(), zzfkoVar);
        zzboc zzbocVar = zzbof.zza;
        zzb.zza("google.afma.request.getAdDictionary", zzbocVar, zzbocVar);
        return new zzbvt(zza, tiVar.w.zzb(zza, akx.forPackage(), zzfkoVar).zza("google.afma.sdkConstants.getSdkConstants", zzbocVar, zzbocVar), akx.forPackage());
    }
}
