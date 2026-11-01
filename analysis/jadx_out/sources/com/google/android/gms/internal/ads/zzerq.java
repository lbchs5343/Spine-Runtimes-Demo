package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzerq implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7449a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7450b;

    public zzerq(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7449a = zzhgpVar;
        this.f7450b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeoo) this.f7449a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzma)).intValue(), (ScheduledExecutorService) this.f7450b.zzb());
    }
}
