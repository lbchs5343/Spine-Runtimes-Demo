package com.google.android.gms.internal.ads;

import g.dcy;

/* loaded from: classes3.dex */
public final class zzfca implements zzfck {

    /* renamed from: a, reason: collision with root package name */
    public final zzfck f7786a;

    /* renamed from: b, reason: collision with root package name */
    public zzcvt f7787b;

    public zzfca(zzfck zzfckVar) {
        this.f7786a = zzfckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcvt zzd() {
        return this.f7787b;
    }

    public final synchronized dcy zzb(zzfcl zzfclVar, zzfcj zzfcjVar, zzcvt zzcvtVar) {
        this.f7787b = zzcvtVar;
        if (zzfclVar.zza == null) {
            return ((zzfbz) this.f7786a).zzb(zzfclVar, zzfcjVar, zzcvtVar);
        }
        zzcsy zzb = zzcvtVar.zzb();
        return zzb.zzi(zzb.zzk(zzgei.zzh(zzfclVar.zza)));
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    public final /* bridge */ /* synthetic */ dcy zzc(zzfcl zzfclVar, zzfcj zzfcjVar, Object obj) {
        return zzb(zzfclVar, zzfcjVar, null);
    }
}
