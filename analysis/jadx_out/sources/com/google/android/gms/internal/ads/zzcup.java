package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcup implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5705a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5706b;

    public zzcup(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5705a = zzhgpVar;
        this.f5706b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded((zzdav) this.f5705a.zzb(), (Executor) this.f5706b.zzb());
    }
}
