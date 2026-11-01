package com.google.android.gms.internal.ads;

import g.edt;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesl implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7498a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7499b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7500c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7501d;

    public zzesl(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7499b = zzhgpVar;
        this.f7500c = zzhgpVar2;
        this.f7501d = zzhgpVar3;
        this.f7498a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzevo zzb = ((zzevq) this.f7499b).zzb();
        zzeqp zzeqpVar = (zzeqp) this.f7500c.zzb();
        List list = (List) this.f7501d.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7498a.zzb();
        if (list.contains("35")) {
            return new zzeun(zzeqpVar, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlN)).intValue(), scheduledExecutorService);
        }
        return new zzeun(zzb, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlN)).intValue(), scheduledExecutorService);
    }
}
