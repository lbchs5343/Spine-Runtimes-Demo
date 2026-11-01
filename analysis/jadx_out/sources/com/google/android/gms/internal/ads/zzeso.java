package com.google.android.gms.internal.ads;

import g.edt;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzeso implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7506a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7507b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7508c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7509d;

    public zzeso(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7507b = zzhgpVar;
        this.f7508c = zzhgpVar2;
        this.f7509d = zzhgpVar3;
        this.f7506a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzewo zzb = ((zzewp) this.f7507b).zzb();
        zzeqp zzeqpVar = (zzeqp) this.f7508c.zzb();
        List list = (List) this.f7509d.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7506a.zzb();
        if (list.contains("39")) {
            return new zzeun(zzeqpVar, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlK)).intValue(), scheduledExecutorService);
        }
        return new zzeun(zzb, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlK)).intValue(), scheduledExecutorService);
    }
}
