package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzers implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7453a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7454b;

    public zzers(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7453a = zzhgpVar;
        this.f7454b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzepc) this.f7453a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmk)).intValue(), (ScheduledExecutorService) this.f7454b.zzb());
    }
}
