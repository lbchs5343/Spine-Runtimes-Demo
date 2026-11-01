package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesa implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7474a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7475b;

    public zzesa(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7474a = zzhgpVar;
        this.f7475b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzest) this.f7474a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlV)).intValue(), (ScheduledExecutorService) this.f7475b.zzb());
    }
}
