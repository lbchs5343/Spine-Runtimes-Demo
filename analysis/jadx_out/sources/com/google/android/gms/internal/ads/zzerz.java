package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzerz implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7472a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7473b;

    public zzerz(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7472a = zzhgpVar;
        this.f7473b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeqx) this.f7472a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmd)).intValue(), (ScheduledExecutorService) this.f7473b.zzb());
    }
}
