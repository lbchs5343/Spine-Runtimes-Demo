package com.google.android.gms.internal.ads;

import g.edt;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzese implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7481a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7482b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7483c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7484d;

    public zzese(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7482b = zzhgpVar;
        this.f7483c = zzhgpVar2;
        this.f7484d = zzhgpVar3;
        this.f7481a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzetk zzb = ((zzetm) this.f7482b).zzb();
        zzeqp zzeqpVar = (zzeqp) this.f7483c.zzb();
        List list = (List) this.f7484d.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7481a.zzb();
        if (list.contains("60")) {
            return new zzeun(zzeqpVar, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmy)).intValue(), scheduledExecutorService);
        }
        return new zzeun(zzb, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmy)).intValue(), scheduledExecutorService);
    }
}
