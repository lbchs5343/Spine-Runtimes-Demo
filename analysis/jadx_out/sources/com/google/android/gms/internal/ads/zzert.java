package com.google.android.gms.internal.ads;

import g.edt;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzert implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7455a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7456b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7457c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7458d;

    public zzert(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7456b = zzhgpVar;
        this.f7457c = zzhgpVar2;
        this.f7458d = zzhgpVar3;
        this.f7455a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzepi zzb = ((zzepk) this.f7456b).zzb();
        zzeqp zzeqpVar = (zzeqp) this.f7457c.zzb();
        List list = (List) this.f7458d.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7455a.zzb();
        if (list.contains("10")) {
            return new zzeun(zzeqpVar, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlQ)).intValue(), scheduledExecutorService);
        }
        return new zzeun(zzb, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlQ)).intValue(), scheduledExecutorService);
    }
}
