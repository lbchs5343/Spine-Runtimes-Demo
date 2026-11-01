package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesh implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7490a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7491b;

    public zzesh(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7490a = zzhgpVar;
        this.f7491b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzetx) this.f7490a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmi)).intValue(), (ScheduledExecutorService) this.f7491b.zzb());
    }
}
