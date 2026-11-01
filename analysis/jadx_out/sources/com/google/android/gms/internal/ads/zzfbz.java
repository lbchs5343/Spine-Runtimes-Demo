package com.google.android.gms.internal.ads;

import g.dcy;

/* loaded from: classes3.dex */
public final class zzfbz implements zzfck {

    /* renamed from: a, reason: collision with root package name */
    public zzcvt f7785a;

    @Override // com.google.android.gms.internal.ads.zzfck
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcvt zzd() {
        return this.f7785a;
    }

    public final synchronized dcy zzb(zzfcl zzfclVar, zzfcj zzfcjVar, zzcvt zzcvtVar) {
        zzcsy zzb;
        try {
            if (zzcvtVar != null) {
                this.f7785a = zzcvtVar;
            } else {
                this.f7785a = (zzcvt) zzfcjVar.zza(zzfclVar.zzb).zzh();
            }
            zzb = this.f7785a.zzb();
        } catch (Throwable th) {
            throw th;
        }
        return zzb.zzi(zzb.zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    public final /* bridge */ /* synthetic */ dcy zzc(zzfcl zzfclVar, zzfcj zzfcjVar, Object obj) {
        return zzb(zzfclVar, zzfcjVar, null);
    }
}
