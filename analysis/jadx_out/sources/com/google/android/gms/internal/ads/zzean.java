package com.google.android.gms.internal.ads;

import android.content.Context;
import g.ti;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzean implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6744a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6745b;

    public zzean(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6744a = zzhgpVar;
        this.f6745b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzeam zzb() {
        Context zza = ((zzchq) this.f6744a).zza();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f6745b.zzb();
        zzeam zzeamVar = new zzeam();
        zzeamVar.f6750e = zza;
        zzeamVar.h = ti.f20033a.q.f();
        zzeamVar.f6747b = scheduledExecutorService;
        return zzeamVar;
    }
}
