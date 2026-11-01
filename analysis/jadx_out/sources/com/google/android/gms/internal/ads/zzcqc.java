package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcqc implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5514a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5515b;

    public zzcqc(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5514a = zzhgpVar;
        this.f5515b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeqe) this.f5514a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmj)).intValue(), (ScheduledExecutorService) this.f5515b.zzb());
    }
}
