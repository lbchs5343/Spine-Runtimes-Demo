package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzerp implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7447a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7448b;

    public zzerp(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7447a = zzhgpVar;
        this.f7448b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeod) this.f7447a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmb)).intValue(), (ScheduledExecutorService) this.f7448b.zzb());
    }
}
