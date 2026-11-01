package com.google.android.gms.internal.ads;

import android.content.Context;
import g.edt;
import g.ggs;

/* loaded from: classes3.dex */
public final class zzdwp implements zzczj, zzdex {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6615a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsm f6616b;

    public zzdwp(Context context, zzdsm zzdsmVar) {
        this.f6615a = context;
        this.f6616b = zzdsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeF)).booleanValue()) {
            zzcaj.zza.execute(new zzdwo(this, this.f6615a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zze(ggs ggsVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeF)).booleanValue()) {
            zzcaj.zza.execute(new zzdwo(this, this.f6615a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zzf(String str) {
    }
}
