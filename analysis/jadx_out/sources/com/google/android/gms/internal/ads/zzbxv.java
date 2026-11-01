package com.google.android.gms.internal.ads;

import g.abz;
import g.gsq;

/* loaded from: classes3.dex */
public final class zzbxv extends zzbxi {

    /* renamed from: a, reason: collision with root package name */
    public final gsq f5047a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbxw f5048b;

    public zzbxv(gsq gsqVar, zzbxw zzbxwVar) {
        this.f5047a = gsqVar;
        this.f5048b = zzbxwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzf(abz abzVar) {
        gsq gsqVar = this.f5047a;
        if (gsqVar != null) {
            gsqVar.c(abzVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzg() {
        zzbxw zzbxwVar;
        gsq gsqVar = this.f5047a;
        if (gsqVar == null || (zzbxwVar = this.f5048b) == null) {
            return;
        }
        gsqVar.d(zzbxwVar);
    }
}
