package com.google.android.gms.internal.ads;

import g.edt;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzerv implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7463a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7464b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7465c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7466d;

    public zzerv(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7464b = zzhgpVar;
        this.f7465c = zzhgpVar2;
        this.f7466d = zzhgpVar3;
        this.f7463a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzepz zzb = ((zzeqb) this.f7464b).zzb();
        zzeqp zzeqpVar = (zzeqp) this.f7465c.zzb();
        List list = (List) this.f7466d.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7463a.zzb();
        if (list.contains("13")) {
            return new zzeun(zzeqpVar, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlY)).intValue(), scheduledExecutorService);
        }
        return new zzeun(zzb, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlY)).intValue(), scheduledExecutorService);
    }
}
