package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesi implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7492a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7493b;

    public zzesi(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7492a = zzhgpVar;
        this.f7493b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeul) this.f7492a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlR)).intValue(), (ScheduledExecutorService) this.f7493b.zzb());
    }
}
