package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesf implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7485a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7486b;

    public zzesf(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7485a = zzhgpVar;
        this.f7486b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzetq) this.f7485a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlT)).intValue(), (ScheduledExecutorService) this.f7486b.zzb());
    }
}
