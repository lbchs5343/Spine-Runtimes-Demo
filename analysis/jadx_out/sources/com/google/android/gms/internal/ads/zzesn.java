package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesn implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7504a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7505b;

    public zzesn(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7504a = zzhgpVar;
        this.f7505b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun((zzeqp) this.f7504a.zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlL)).intValue(), (ScheduledExecutorService) this.f7505b.zzb());
    }
}
