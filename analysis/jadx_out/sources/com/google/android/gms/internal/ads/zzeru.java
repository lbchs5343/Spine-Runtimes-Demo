package com.google.android.gms.internal.ads;

import g.edt;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzeru implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7459a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7460b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7461c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7462d;

    public zzeru(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7460b = zzhgpVar;
        this.f7461c = zzhgpVar2;
        this.f7462d = zzhgpVar3;
        this.f7459a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzepv zzb = ((zzepx) this.f7460b).zzb();
        zzeqp zzeqpVar = (zzeqp) this.f7461c.zzb();
        List list = (List) this.f7462d.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7459a.zzb();
        if (list.contains("54")) {
            return new zzeun(zzeqpVar, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlZ)).intValue(), scheduledExecutorService);
        }
        return new zzeun(zzb, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlZ)).intValue(), scheduledExecutorService);
    }
}
