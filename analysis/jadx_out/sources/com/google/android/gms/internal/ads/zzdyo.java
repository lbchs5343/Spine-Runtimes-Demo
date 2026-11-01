package com.google.android.gms.internal.ads;

import android.content.Context;
import g.ti;

/* loaded from: classes3.dex */
public final class zzdyo implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6690a;

    public zzdyo(zzhgp zzhgpVar) {
        this.f6690a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzdyn zzb() {
        Context zza = ((zzchq) this.f6690a).zza();
        zzdyn zzdynVar = new zzdyn();
        zzdynVar.f6688a = 1;
        zzdynVar.h = new zzbur(zza, ti.f20033a.q.f(), zzdynVar, zzdynVar);
        return zzdynVar;
    }
}
