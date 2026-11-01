package com.google.android.gms.internal.ads;

import g.cvb;
import g.czz;
import g.dcy;

/* loaded from: classes3.dex */
public final class zzenx implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final cvb f7301a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f7302b;

    public zzenx(cvb cvbVar, zzffo zzffoVar) {
        this.f7301a = cvbVar;
        this.f7302b = zzffoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        ((czz) this.f7301a).getClass();
        return zzgei.zzh(new zzeny(this.f7302b, System.currentTimeMillis()));
    }
}
