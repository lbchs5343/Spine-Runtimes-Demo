package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzerr implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7451a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7452b;

    public zzerr(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7451a = zzhgpVar;
        this.f7452b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeoy) this.f7451a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmc)).intValue(), (ScheduledExecutorService) this.f7452b.zzb());
    }
}
