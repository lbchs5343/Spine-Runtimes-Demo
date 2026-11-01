package com.google.android.gms.internal.ads;

import g.edt;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesg implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7487a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7488b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7489c;

    public zzesg(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7487a = zzhgpVar2;
        this.f7488b = zzhgpVar3;
        this.f7489c = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzets zza = zzetu.zza();
        zzeqp zzeqpVar = (zzeqp) this.f7487a.zzb();
        List list = (List) this.f7488b.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7489c.zzb();
        if (list.contains("24")) {
            return new zzeun(zzeqpVar, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlS)).intValue(), scheduledExecutorService);
        }
        return new zzeun(zza, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlS)).intValue(), scheduledExecutorService);
    }
}
