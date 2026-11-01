package com.google.android.gms.internal.ads;

import g.evo;

/* loaded from: classes3.dex */
public final class zzctt implements evo {

    /* renamed from: a, reason: collision with root package name */
    public final zzctx f5656a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f5657b;

    public zzctt(zzctx zzctxVar, zzffo zzffoVar) {
        this.f5656a = zzctxVar;
        this.f5657b = zzffoVar;
    }

    @Override // g.evo
    public final void onAdClicked() {
        this.f5656a.zzc(this.f5657b.zzf);
    }
}
