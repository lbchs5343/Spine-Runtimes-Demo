package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesj implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7494a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7495b;

    public zzesj(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7494a = zzhgpVar;
        this.f7495b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeuw) this.f7494a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlP)).intValue(), (ScheduledExecutorService) this.f7495b.zzb());
    }
}
